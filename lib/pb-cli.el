;;; pb-cli --- defaults for emacs in CLI mode.
;;;
;;; Commentary:
;;;
;;; Copyright (C) 2017 Patrick Brown
;;;
;;; Code:

(unless (display-graphic-p)
  ;; Disable the menu-bar
  (menu-bar-mode -1))

(provide 'pb-cli)
;;; pb-cli ends here
