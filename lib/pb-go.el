;;; pb-go.el --- go-lang specific defaults
;;;
;;; Commentary:
;;; Copyright (C) 2016 Patrick Arthur Brown
;;;
;;; Code:

(setenv "GOPATH" (getenv "GOPATH"))
(setq exec-path (cons
                 (concat (getenv "GOPATH") "/bin")
                 exec-path))

(use-package go-mode :ensure t)

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
