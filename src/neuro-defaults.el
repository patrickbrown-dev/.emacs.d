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

(use-package helm-projectile
  :config (helm-projectile-on))

(use-package paredit
  :config (paredit-mode t))

;; Start in scratch buffer
(setq inhibit-startup-screen t)
(setq inhibit-splash-screen t)

;; Use leuven, a fine built-in theme.
(load-theme 'cyberpunk t)

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

;; Paren highlighting
(show-paren-mode 1)

;; Whitespace
(setq whitespace-style (quote (face trailing empty lines)))

;; Eshell
(setenv "PATH" (concat "/usr/local/bin:"
                       "/usr/bin:"
                       "/bin:"
                       "/usr/sbin:"
                       "/sbin:"
                       (getenv "PATH")))

(provide 'neuro-defaults)
;;; neuro-defaults.el ends here
