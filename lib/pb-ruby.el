;;; pb-ruby.el --- ruby configuration.
;;;
;;; Commentary:
;;; Copyright (C) 2016 by Patrick Arthur Brown
;;;
;;; Code:
(add-hook'
 ruby-mode-hook
 (lambda ()
   (use-package rspec-mode
     :ensure t
     :config
     (add-hook 'after-init-hook 'inf-ruby-switch-setup)
     (defadvice rspec-compile (around rspec-compile-around)
       (let ((shell-file-name "/bin/bash"))
         ad-do-it))

     (ad-activate 'rspec-compile)
     (rspec-mode))

   (use-package nlinum
     :ensure t
     :config (nlinum-mode))

   (use-package rvm
     :ensure t)

   (use-package ruby-refactor
     :ensure t
     :config
     (setq ruby-refactor-add-parens t)
     (ruby-refactor-mode-launch))

   (whitespace-mode t)

   (defun rspec-outline ()
     "Opens a buffer with rspec outline."
     (interactive)
     (multi-occur (list (current-buffer)) "^\s+\\(it\\\|describe\\\|context\\)"))

   (pb-set-tags-file-path)))

(provide 'pb-ruby)
;;; pb-ruby.el ends here
