;;; javascript-modes.el --- modes for javascript.
;;; Commentary:
;;; Code:
(defun js-modes ()
  (use-package js2-mode)
  (add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))
  (defadvice web-mode-highlight-part (around tweak-jsx activate)
    (if (equal web-mode-content-type "jsx")
        (let ((web-mode-enable-part-face nil))
          ad-do-it)
      ad-do-it)))

(provide 'javascript-modes)
;;; javascript-modes.el ends here
