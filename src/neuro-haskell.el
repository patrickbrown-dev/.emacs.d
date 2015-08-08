;;; neuro-haskell.el --- haskell configuration.
;;; Commentary:
;;; Code:
(add-hook' haskell-mode-hook 
           (lambda ()
             (use-package haskell-mode)
             (whitespace-mode t)))

(provide 'neuro-haskell)
;;; neuro-haskell.el ends here
