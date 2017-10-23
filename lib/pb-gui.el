;;; pb-gui.el --- defaults for emacs in GUI mode.
;;;
;;; Commentary:
;;;  _  _     __  _ _  _  _  _  _  _
;;; / //_'/_///_// / //_|/ //_ /_'/
;;;
;;; Copyright (C) 2017 Patrick Arthur Brown
;;;
;;; Code:

(when (display-graphic-p)
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

  ;; Use gruvbox-light-hard in daytime and gruvbox-dark-soft at nightime.
  ;; Generally it is better to use high-contrast light themes in well-lit
  ;; environments and low-contrast dark themes in dark environments.
  ;; TODO: Implement this with (nth 2 (decode-time)).
  (use-package gruvbox-theme
    :ensure t
    :config (load-theme 'gruvbox-light-hard)))

(provide 'pb-gui)
;;; pb-gui ends here
