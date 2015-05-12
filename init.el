;;; init.el -- entry point to emacs config

;;; Commentary:
;;  I.   Melpa
;;  II.  Defaults
;;  III. Modes
;;  IV.  Keybindings
;;  V.   Elixir

;;; Code:

;;; I. Melpa Setup ------------------------------------------------

(require 'package)

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)

;; Install use-package if doesn't exist.
(if (not (package-installed-p 'use-package))
    (progn
      (package-refresh-contents)
      (package-install 'use-package)))

(require 'use-package)

;;; II. Defaults --------------------------------------------------

;; Secrets
(if (file-exists-p "~/.emacs.d/secrets.el")
    (load "~/.emacs.d/secrets"))

;; Disable tool bar
(tool-bar-mode -1)

;; Disable menu bar in CLI mode
(when (not (display-graphic-p))
  (menu-bar-mode -1))

;; No tabs, ever
(setq-default indent-tabs-mode nil)

;; Kill the alarm bell
(setq ring-bell-function 'ignore)

;; Move backups and autosaves to temporary dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Whitespace
(setq whitespace-style (quote (trailing empty lines)))

;; Eshell
(setenv "PATH" (concat "/usr/local/bin:"
                       "/usr/bin:"
                       "/bin:"
                       "/usr/sbin:"
                       "/sbin:"
                       (getenv "PATH")))

;;; III. Modes

(use-package evil
  :config (evil-mode 1))

(use-package magit
  :init (setq magit-last-seen-setup-instructions "1.4.0")
  :bind ("C-c g s" . magit-status))

(use-package projectile
  :config (add-hook 'after-init-hook 'projectile-global-mode))

(use-package company
  :config (add-hook 'after-init-hook 'global-company-mode))

(use-package flycheck
  :config (add-hook 'after-init-hook 'global-flycheck-mode))

(use-package helm
  :config (helm-mode 1))

(use-package helm-projectile
  :config (helm-projectile-on))

(use-package paredit
  :config (paredit-mode t))

(use-package solarized-theme
  :config (load-theme 'solarized-dark t))

;;; IV. Keybindings ---------------------------------------------

;; Commentary
(global-set-key (kbd "C-c C-u") 'comment-or-uncomment-region)

;;; V. Elixir ---------------------------------------------------

(defun elixir-modes ()
  "Modes to use while editing elixir files."
  (use-package elixir-mode)
  (use-package alchemist
    :config (alchemist-mode t))
  (whitespace-mode t))

(add-hook' elixir-mode-hook 'elixir-modes)

;;; init.el ends here
