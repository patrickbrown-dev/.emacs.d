;;; pb-java.el --- java configuration.
;;;
;;; Commentary:
;;;  _  _     __  _ _  _  _  _  _  _
;;; / //_'/_///_// / //_|/ //_ /_'/
;;;
;;; Copyright (C) 2018 Patrick Arthur Brown
;;;
;;; Code:

(add-hook'
 java-mode-hook
 (lambda ()

   (use-package eclim
     :ensure t
     :config (eclim-mode t))

   (whitespace-mode t)

   (use-package nlinum
     :ensure t
     :config (nlinum-mode t))))

(provide 'pb-java)
;;; pb-java.el ends here
