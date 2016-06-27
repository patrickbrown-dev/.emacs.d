;;; pb-haskell.el --- haskell configuration.
;;; Commentary:
;;; Code:

(use-package haskell-mode
  :ensure t)

(add-hook' haskell-mode-hook
        (lambda ()
          (use-package intero
            :ensure t
            :config (intero-mode t))
          (whitespace-mode t)))

(provide 'pb-haskell)
;;; pb-haskell.el ends here
