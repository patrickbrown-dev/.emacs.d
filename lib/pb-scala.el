;;; pb-scala.el --- scala configuration.
;;;
;;; Commentary:
;;;  _  _     __  _ _  _  _  _  _  _
;;; / //_'/_///_// / //_|/ //_ /_'/
;;;
;;; Copyright (C) 2018 Patrick Arthur Brown
;;;
;;; Code:

(add-hook'
 scala-mode-hook
 (lambda ()

   ;; TODO: This isn't quite working as I had hope. Some day I'll
   ;; revisit this.
   ;;
   ;; (use-package ensime
   ;;   :ensure t
   ;;   :config (progn
   ;;             (setq ensime-startup-notification nil)
   ;;             (setq ensime-startup-snapshot-notification nil))
   ;;   :pin melpa)

   (whitespace-mode t)

   (use-package nlinum
     :ensure t
     :config (nlinum-mode t))))

(provide 'pb-scala)
;;; pb-scala.el ends here
