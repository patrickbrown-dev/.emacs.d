;;; pb-go.el --- go-lang specific defaults
;;;
;;; Commentary:
;;;  _  _     __  _ _  _  _  _  _  _
;;; / //_'/_///_// / //_|/ //_ /_'/
;;;
;;; Copyright (C) 2017 Patrick Arthur Brown
;;;
;;; Code:

(setenv "GOPATH" (substitute-in-file-name "$HOME"))

(use-package go-mode
  :ensure t
  :bind (("C-c d j" . godef-jump)
         ("C-c d d" . godef-describe)))

(add-hook' go-mode-hook
           (lambda ()
             (add-hook 'before-save-hook 'gofmt-before-save)

             (use-package company-go
               :ensure t
               :config
               (set (make-local-variable 'company-backends) '(company-go)))

             (use-package nlinum
               :ensure t
               :config (nlinum-mode))))

(provide 'pb-go)
;;; pb-go.el ends here
