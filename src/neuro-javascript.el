;;; neuro-javascript.el --- javascript configuration.
;;; Commentary:
;;; Code:
(add-hook' javascript-mode-hook
           (lambda ()
             (use-package js2-mode)
             (add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))
             (defadvice web-mode-highlight-part (around tweak-jsx activate)
               (if (equal web-mode-content-type "jsx")
                   (let ((web-mode-enable-part-face nil))
                     ad-do-it)
                 ad-do-it))))

(provide 'neuro-javascript)
;;; neuro-javascript.el ends here
