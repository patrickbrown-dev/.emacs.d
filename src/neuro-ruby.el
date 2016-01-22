;;; neuro-ruby.el --- ruby configuration.
;;;
;;; Commentary:
;;; Copyright (C) 2016 by Patrick Arthur Brown
;;;
;;; Code:
(add-hook'
 ruby-mode-hook
 (lambda ()
   (use-package rspec-mode
     :config
     (add-hook 'after-init-hook 'inf-ruby-switch-setup)
     (rspec-mode))

   (use-package rvm)

   (whitespace-mode t)

   (defun rspec-outline ()
     "Opens a buffer with rspec outline."
     (interactive)
     (multi-occur (list (current-buffer)) "^\s+\\(it\\\|describe\\\|context\\)"))))

(provide 'neuro-ruby)
;;; neuro-ruby.el ends here
