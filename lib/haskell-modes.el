;;; haskell-modes.el --- haskell configuration.
;;; Commentary:
;;; Code:
(defun haskell-modes ()
  "Modes to use while editing hs files."
  (use-package haskell-mode)
  (whitespace-mode t))

(add-hook' haskell-mode-hook 'haskell-modes)

(provide 'haskell-modes)
;;; haskell-modes.el ends here
