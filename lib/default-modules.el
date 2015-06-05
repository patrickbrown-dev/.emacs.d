;;; default-modules.el --- modules present for all modes
;;; Commentary:
;;; Code:
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

(use-package flycheck-haskell
  :config (eval-after-load 'flycheck
            '(add-hook 'flycheck-mode-hook #'flycheck-haskell-setup)))

(use-package helm
  :config (helm-mode 1))

(use-package helm-projectile
  :config (helm-projectile-on))

(use-package paredit
  :config (paredit-mode t))

(provide 'default-modules)
;;; default-modules.el ends here
