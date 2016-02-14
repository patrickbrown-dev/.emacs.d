;;; pb-java.el --- java configuration.
;;; Commentary:
;;; Code:
(require-package 'jdee)
(add-hook' java-mode-hook
           (lambda ()
             (use-package jdee)))

(provide 'pb-java)
;;; pb-java.el ends here
