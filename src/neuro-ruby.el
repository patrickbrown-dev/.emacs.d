;;; neuro-ruby.el --- ruby configuration.
;;; Commentary:
;;; Code:
(add-hook' ruby-mode-hook 
           (lambda ()
             (use-package rspec-mode
               :config
               (add-hook 'after-init-hook 'inf-ruby-switch-setup)
               (rspec-mode)
               (ad-activate 'rspec-compile))
             (use-package rvm)
             (whitespace-mode t)))

(provide 'neuro-ruby)
;;; neuro-ruby.el ends here
