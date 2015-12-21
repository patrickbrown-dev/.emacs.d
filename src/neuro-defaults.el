;;; neuro-defaults.el --- sane defaults for sane people.
;;; Commentary:
;;; Code:
(use-package magit
  :init (setq magit-last-seen-setup-instructions "1.4.0")
  :bind ("C-c g s" . magit-status))

(use-package projectile
  :config (add-hook 'after-init-hook 'projectile-global-mode))

(use-package company
  :config (add-hook 'after-init-hook 'global-company-mode))

(use-package flycheck
  :config (add-hook 'after-init-hook 'global-flycheck-mode))

(use-package flycheck-haskell
  :config (eval-after-load 'flycheck
            '(add-hook 'flycheck-mode-hook #'flycheck-haskell-setup)))

(use-package helm
  :config (helm-mode 1))

(use-package smartparens
  :config (require 'smartparens-config))

(use-package helm-projectile
  :config (helm-projectile-on))

(use-package paredit
  :config (paredit-mode t))

;;(use-package cyberpunk-theme
;;  :config (load-theme 'cyberpunk t))

(when (display-graphic-p)
  (load-theme 'leuven t))

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

;; Only disable scrollbar for graphic mode
(when (display-graphic-p)
  (scroll-bar-mode -1))

;; Disable and menu bar in CLI mode
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

;; Paren highlighting
(show-paren-mode 1)

;; Highlight Line
(when (display-graphic-p)
  (global-hl-line-mode t))

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
