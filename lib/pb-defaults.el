;;; pb-defaults.el --- global default settings
;;;
;;; Commentary:
;;; 2016 (c) Patrick Arthur Brown
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

(use-package flycheck
  :ensure t
  :config (add-hook 'after-init-hook 'global-flycheck-mode))

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

(use-package etags-select
  :ensure t
  :bind (("C-c ." . etags-select-find-tag-at-point)))

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
(setq whitespace-style (quote (face trailing empty lines-tail indentation)))

;; Delete trailing whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; OS X command as meta
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

(use-package exec-path-from-shell
  :ensure t
  :if (memq window-system '(mac ns))
  :config (exec-path-from-shell-initialize))

(provide 'pb-defaults)
;;; pb-defaults.el ends here
