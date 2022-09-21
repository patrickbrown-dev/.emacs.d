;;; pb-defaults.el --- global default settings
;;;
;;; Commentary:
;;;
;;; Copyright (C) 2017 Patrick Brown
;;;
;;; Code:

(use-package magit
  :ensure t
  :init (setq magit-last-seen-setup-instructions "1.4.0")
  :bind ("C-c g s" . magit-status))

(use-package company
  :ensure t
  :init
  (setq company-tooltip-limit 20)
  (setq company-idle-delay .3)
  (setq company-echo-delay 0)
  (setq company-begin-commands '(self-insert-command))
  :config
  (add-hook 'after-init-hook 'global-company-mode))

(use-package ivy
  :ensure counsel
  :bind (("C-c C-r" . ivy-resume)
         ("M-x" . counsel-M-x)
         ("\C-s" . swiper)
         ("C-x C-f" . counsel-find-file)
         ("C-x l" . counsel-locate)
         ("C-c f" . counsel-git)
         ("C-c g g" . counsel-git-grep)
         ("C-c a g" . counsel-ag))
  :config (lambda ()
            (ivy-mode 1)
            (setq ivy-use-virtual-buffers t)))

(use-package which-key
  :ensure t
  :config (which-key-mode))

(use-package lsp-mode
  :ensure t
  :init
  ;; Set prefix for lsp-command-keymap
  (setq lsp-keymap-prefix "C-c l")
  :hook ((ruby-mode . lsp)
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)

(use-package lsp-ui :commands lsp-ui-mode)
(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)

(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setenv "PATH" (concat (getenv "PATH") ":/Library/TeX/texbin"))
(setq exec-path (append exec-path '("/usr/local/bin")))

;; Start in scratch buffer
(setq inhibit-startup-screen t)
(setq inhibit-splash-screen t)

;; Show line/column in footer
(line-number-mode t)
(column-number-mode t)

;; Use ssh for tramp
(setq tramp-default-method "ssh")

;; Disable tool bar
(tool-bar-mode -1)

;; No tabs, ever
(setq-default indent-tabs-mode nil)

;; Kill the alarm bell
(setq ring-bell-function 'ignore)

;; Move backups and autosaves to temporary dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Paren highlighting
(show-paren-mode 1)

;; Whitespace
(setq whitespace-style (quote (face trailing empty indentation)))

;; Delete trailing whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; OS X command as meta
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

(visual-line-mode t)

(provide 'pb-defaults)
;;; pb-defaults.el ends here
