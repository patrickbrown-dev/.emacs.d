;;; neuro-haskell.el --- haskell configuration.
;;; Commentary:
;;; Code:
(add-hook' haskell-mode-hook
           (lambda ()
             (use-package haskell-mode)
             (haskell-indent-mode t)
             (haskell-indentation-mode t)
             (add-to-list 'company-backends 'company-ghc)
             (whitespace-mode t)))

(provide 'neuro-haskell)
;;; neuro-haskell.el ends here
