;;; pb-haskell.el --- haskell configuration.
;;; Commentary:
;;; Code:
(add-hook' haskell-mode-hook
           (lambda ()
             (require 'intero)
             (intero-mode)
             (whitespace-mode t)))

(provide 'pb-haskell)
;;; pb-haskell.el ends here
