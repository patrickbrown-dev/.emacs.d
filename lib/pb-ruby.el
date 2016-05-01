;;; pb-ruby.el --- ruby configuration.
;;;
;;; Commentary:
;;; Copyright (C) 2016 by Patrick Arthur Brown
;;;
;;; Code:
(add-hook'
 ruby-mode-hook
 (lambda ()
   (require-package 'rspec-mode)
   (use-package rspec-mode
     :config
     (add-hook 'after-init-hook 'inf-ruby-switch-setup)
     (defadvice rspec-compile (around rspec-compile-around)
       (let ((shell-file-name "/bin/bash"))
         ad-do-it))

     (ad-activate 'rspec-compile)
     (rspec-mode))

   (require-package 'rvm)
   (use-package rvm)

   (require-package 'nlinum)
   (use-package nlinum
     :config (nlinum-mode t))

   (require-package 'ruby-refactor)
   (use-package ruby-refactor
     :config
     (setq ruby-refactor-add-parens t)
     (ruby-refactor-mode-launch))

   (whitespace-mode t)

   (defun rspec-outline ()
     "Opens a buffer with rspec outline."
     (interactive)
     (multi-occur (list (current-buffer)) "^\s+\\(it\\\|describe\\\|context\\)"))))

(provide 'pb-ruby)
;;; pb-ruby.el ends here
