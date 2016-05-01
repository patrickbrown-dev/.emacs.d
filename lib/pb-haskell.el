;;; pb-haskell.el --- haskell configuration.
;;; Commentary:
;;; Code:
(add-hook' haskell-mode-hook
           (lambda ()
             (use-package haskell-mode)
             (haskell-indent-mode t)
             (haskell-indentation-mode t)
             (add-to-list 'company-backends 'company-ghc)
             (nlinum-mode t)
             (whitespace-mode t)))

(provide 'pb-haskell)
;;; pb-haskell.el ends here
