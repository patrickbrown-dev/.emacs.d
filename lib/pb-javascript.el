;;; pb-javascript.el --- javascript configuration.
;;;
;;; Commentary:
;;;
;;; Copyright (C) 2017 Patrick Brown
;;;
;;; Code:

(add-hook'
 js-mode-hook
 (lambda ()
   (use-package nlinum
     :ensure t
     :config (nlinum-mode t))

   (setq js-indent-level 2)

   (whitespace-mode t)))

;;; JSX specific configuration
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . jsx-mode))
(autoload 'jsx-mode "jsx-mode" "JSX mode" t)

(add-hook'
 jsx-mode-hook
 (lambda ()
   (use-package nlinum
     :ensure t
     :config (nlinum-mode t))

   (setq jsx-indent-level 2)

   (whitespace-mode t)))


(provide 'pb-javascript)
;;; pb-javascript.el ends here
