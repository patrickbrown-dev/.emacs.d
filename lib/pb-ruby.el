;;; pb-ruby.el --- ruby configuration.
;;;
;;; Commentary:
;;;
;;; Copyright (C) 2015–2024 Patrick Brown
;;;
;;; Code:

(use-package yaml-mode :ensure t)

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

   (use-package ruby-refactor
     :ensure t
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
