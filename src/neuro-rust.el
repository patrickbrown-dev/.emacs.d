;;; neuro-rust.el --- rust configuration.
;;; Commentary:
;;; Code:
(add-hook' rust-mode-hook
           (lambda ()
             (use-package racer
               :config
               (setq racer-cmd "/Users/ptrckbrwn/src/rs/racer/target/release/racer")
               (setq racer-rust-src-path "/Users/ptrckbrwn/src/rs/rustc/src/")

               (racer-activate)
               (local-set-key (kbd "M-.") #'racer-find-definition)
               (local-set-key (kbd "TAB") #'racer-complete-or-indent))

             (add-hook 'racer-mode-hook #'company-mode)
             (global-set-key (kbd "TAB") #'company-indent-or-complete-common) ;
             (setq company-tooltip-align-annotations t)
             (whitespace-mode t)))

 (provide 'neuro-rust)
;;; neuro-rust.el ends here
