;;; neuro-elixir.el --- elixir configuration.
;;; Commentary:
;;; Code:
(add-hook' elixir-mode-hook
           (lambda ()
             (use-package elixir-mode)
             (use-package alchemist
               :config (alchemist-mode t))
             (linum-mode t)
             (whitespace-mode t)))

(provide 'neuro-elixir)
;;; neuro-elixir.el ends here
