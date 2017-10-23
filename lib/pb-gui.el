;;; pb-gui.el --- defaults for emacs in GUI mode.
;;;
;;; Commentary:
;;;  _  _     __  _ _  _  _  _  _  _
;;; / //_'/_///_// / //_|/ //_ /_'/
;;;
;;; Copyright (C) 2017 Patrick Arthur Brown
;;;
;;; Code:

(server-start)

;; No scroll-bars
(scroll-bar-mode -1)

;; Highlight the current line
(global-hl-line-mode t)

(add-to-list 'default-frame-alist '(height . 999999))
(add-to-list 'default-frame-alist '(width . 180))

(use-package gruvbox-theme
  :ensure t
  :config (load-theme 'gruvbox-light-hard))

(provide 'pb-gui)
;;; pb-gui ends here
