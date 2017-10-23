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

;; Initialize with a fairly large window
(add-to-list 'default-frame-alist '(height . 999999))
(add-to-list 'default-frame-alist '(width . 180))

;; Use Roboto Mono
(add-to-list 'default-frame-alist
             '(font . "Roboto Mono-14"))

;; TODO: Use gruvbox-light-hard in daytime and gruvbox-dark-soft at nightime.
;; Generally it is better to use high-contrast light themes in well-lit
;; environments and low-contrast dark themes in dark environments. You'll want
;; to parse the time out of (current-time-string) "Sun Oct 22 21:45:10 2017"
;; which won't be very fun.
(use-package gruvbox-theme
  :ensure t
  :config (load-theme 'gruvbox-light-hard))

(provide 'pb-gui)
;;; pb-gui ends here
