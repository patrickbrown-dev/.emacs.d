;;; pb-python.el --- python configuration.
;;;
;;; Commentary:
;;;  _  _     __  _ _  _  _  _  _  _
;;; / //_'/_///_// / //_|/ //_ /_'/
;;;
;;; Copyright (C) 2017 Patrick Arthur Brown
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
