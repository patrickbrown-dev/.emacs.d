;;; pb-gui.el --- defaults for emacs in GUI mode.
;;;
;;; Commentary:
;;;
;;; Copyright (C) 2017 Patrick Brown
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

  (use-package exec-path-from-shell
    :ensure t
    :config (exec-path-from-shell-initialize)))

(provide 'pb-gui)
;;; pb-gui ends here
