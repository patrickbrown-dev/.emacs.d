;;; pb-python.el --- python configuration.
;;;
;;; Commentary:
;;; Copyright (C) 2016 by Patrick Arthur Brown
;;;
;;; Code:
(package-initialize)
(elpy-enable)
(setq elpy-rpc-backend "jedi")

(add-hook'
 python-mode-hook
 (lambda ()
   (whitespace-mode t)))

(provide 'pb-python)
;;; pb-python.el ends here
