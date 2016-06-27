;;; pb-elixir.el --- elixir configuration
;;;
;;; Commentary:
;;; Copyright (C) 2016 Patrick Arthur Brown
;;;
;;; Code:

(add-hook' elixir-mode-hook
           (lambda ()
             (use-package elixir-mode
               :ensure t)
             (use-package alchemist
               :ensure t
               :config (alchemist-mode t))
             (whitespace-mode t)))

(provide 'pb-elixir)
;;; pb-elixir.el ends here
