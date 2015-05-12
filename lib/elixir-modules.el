;;; elixir-modules.el --- elixir-lang configuration.
;;; Commentary:
;;; Code:
(defun elixir-modes ()
  "Modes to use while editing elixir files."
  (use-package elixir-mode)
  (use-package alchemist
    :config (alchemist-mode t))
  (whitespace-mode t))

(add-hook' elixir-mode-hook 'elixir-modes)

(provide 'elixir-modules)
;;; elixir-modules.el ends here
