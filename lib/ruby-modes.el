;;; ruby-modules.el --- ruby configuration.
;;; Commentary:
;;; Code:
(defun ruby-modes ()
  "Modes to use while editing ruby files."
  (use-package rspec-mode
    :config
    (add-hook 'after-init-hook 'inf-ruby-switch-setup)
    (rspec-mode)
    (ad-activate 'rspec-compile))
  (use-package rvm)
  (whitespace-mode t))

(add-hook' ruby-mode-hook 'ruby-modes)

(provide 'ruby-modules)
;;; ruby-modules.el ends here
