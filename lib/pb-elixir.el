;;; pb-elixir.el --- elixir configuration
;;;
;;; Commentary:
;;; Copyright (C) 2016 Patrick Arthur Brown
;;;
;;; Simply enables ~elixir-mode~ and ~alchemist~ for editing elixir files.
;;;
;;; Code:
(add-hook' elixir-mode-hook
           (lambda ()
             (require-package 'elixir-mode)
             (require-package 'alchemist)
             (use-package elixir-mode)
             (use-package alchemist
               :config (alchemist-mode t))
             (whitespace-mode t)))

(provide 'pb-elixir)
;;; pb-elixir.el ends here
