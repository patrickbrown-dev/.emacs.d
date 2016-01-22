;;; neuro-java.el --- java configuration.
;;; Commentary:
;;; Code:
(require-package 'jdee)
(add-hook' java-mode-hook
           (lambda ()
             (use-package jdee)))

(provide 'neuro-java)
;;; neuro-java.el ends here
