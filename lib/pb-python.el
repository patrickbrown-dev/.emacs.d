;;; pb-python.el --- python configuration.
;;;
;;; Commentary:
;;;
;;; Copyright (C) 2017 Patrick Brown
;;;
;;; Code:

(defalias 'workon 'pyvenv-workon)
(setenv "WORKON_HOME" "~/.venvs")

(add-hook'
 python-mode-hook
 (lambda ()
   (use-package nlinum
     :ensure t
     :config (nlinum-mode t))

   (whitespace-mode t)))

(provide 'pb-python)
;;; pb-python.el ends here
