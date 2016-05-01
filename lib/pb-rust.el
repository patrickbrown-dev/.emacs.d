;;; pb-rust.el --- rust configuration.
;;; Commentary:
;;; Code:
(add-hook' rust-mode-hook
           (lambda ()
             (whitespace-mode t)))

 (provide 'pb-rust)
;;; pb-rust.el ends here
