;;; neuro-defaults.el --- sane defaults for sane people.
;;; Commentary:
;;; Code:
(use-package magit
  :init (setq magit-last-seen-setup-instructions "1.4.0")
  :bind ("C-c g s" . magit-status))

(use-package evil-magit
  :init (require 'evil-magit)
  :config (setq evil-magit-state 'normal))

(use-package company
  :config (add-hook 'after-init-hook 'global-company-mode))

(use-package flycheck
  :config (add-hook 'after-init-hook 'global-flycheck-mode))

(use-package ivy
  :config (lambda ()
            (ivy-mode 1)
            (setq ivy-use-virtual-buffers t)))

(use-package smartparens
  :config (require 'smartparens-config))

(use-package paredit
  :config (paredit-mode t))

(use-package evil
  :config (evil-mode 1))

(add-to-list 'default-frame-alist '(font . "Hack-12" ))

;; Start in scratch buffer
(setq inhibit-startup-screen t)
(setq inhibit-splash-screen t)

;; Set journal directory
(setq org-journal-dir "~/org/journal/")

;; Show line/column in footer
(line-number-mode t)
(column-number-mode t)

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

;; Eshell
(setenv "PATH" (concat "/usr/local/bin:"
                       "/usr/bin:"
                       "/bin:"
                       "/usr/sbin:"
                       "/sbin:"
                       (getenv "PATH")))

(provide 'neuro-defaults)
;;; neuro-defaults.el ends here
