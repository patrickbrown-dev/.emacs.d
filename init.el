;;; init.el --- entry point to emacs config
;;
;;; Commentary:
;;
;;; Code:

;; Melpa setup
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

;; Load path
(setq load-path (cons "~/.emacs.d/lib" load-path))

;; Secrets
(if (file-exists-p "~/.emacs.d/secrets.el")
    (load "~/.emacs.d/secrets"))

;; Use wombat, a fine built-in theme.
(load-theme 'wombat t)
;; If it's bright out, maybe use this theme instead:
;; (load-theme 'dichromacy t)

;; Disable tool bar
(tool-bar-mode -1)

;; Disable scroll bar
(scroll-bar-mode -1)

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
(setq whitespace-style (quote (face trailing empty lines)))

;; Eshell
(setenv "PATH" (concat "/usr/local/bin:"
                       "/usr/bin:"
                       "/bin:"
                       "/usr/sbin:"
                       "/sbin:"
                       (getenv "PATH")))

(require 'default-modules)
(require 'ruby-modules)
(require 'elixir-modules)

(global-set-key (kbd "C-c C-u") 'comment-or-uncomment-region)

;;; init.el ends here
