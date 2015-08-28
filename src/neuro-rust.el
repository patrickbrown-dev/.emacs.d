;;; neuro-rust.el --- rust configuration.
;;; Commentary:
;;; Code:
(add-hook' rust-mode-hook
           (lambda ()
             (use-package racer
               :config
               (racer-activate)
               (local-set-key (kbd "M-.") #'racer-find-definition)
               (local-set-key (kbd "TAB") #'racer-complete-or-indent))
             (whitespace-mode t)))

 (provide 'neuro-rust)
;;; neuro-rust.el ends here
