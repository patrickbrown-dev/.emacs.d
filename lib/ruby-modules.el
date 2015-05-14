;;; ruby-modules.el --- ruby configuration.
;;; Commentary:
;;; Code:
(defun ruby-modes ()
  "Modes to use while editing ruby files."
  (use-package rspec-mode
    :config
    (add-hook 'after-init-hook 'inf-ruby-switch-setup)
    (rspec-mode)
    (defadvice rspec-compile (around rspec-compile-around)
      "Use BASH shell for running the specs because of ZSH issues."
      (let ((shell-file-name "/bin/bash"))
        ad-do-it))
    (ad-activate 'rspec-compile))
  (use-package rvm)
  (use-package rainbow-delimiters
    :config (rainbow-delimiters-mode-enable))
  (whitespace-mode t))

(add-hook' ruby-mode-hook 'ruby-modes)

(provide 'ruby-modules)
;;; ruby-modules.el ends here
