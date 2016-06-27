;;; pb-python.el --- python configuration.
;;;
;;; Commentary:
;;; Copyright (C) 2016 by Patrick Arthur Brown
;;;
;;; Code:

(defalias 'workon 'pyvenv-workon)
(setenv "WORKON_HOME" "~/.envs")

(add-hook'
 python-mode-hook
 (lambda ()
   (whitespace-mode t)))

(provide 'pb-python)
;;; pb-python.el ends here
