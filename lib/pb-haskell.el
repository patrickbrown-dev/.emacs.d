;;; pb-haskell.el --- haskell configuration.
;;; Commentary:
;;; Code:
(add-hook' haskell-mode-hook
           (lambda ()
             (use-package haskell-mode)
             (require 'intero)
             (nlinum-mode t)
             (whitespace-mode t)))

(provide 'pb-haskell)
;;; pb-haskell.el ends here
