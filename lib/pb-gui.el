;;; pb-gui --- Defaults for Emacs in GUI mode
;;; Commentary:
;;; Code:
;; Enable the wonders of Emacs client and server interaction
(server-start)

;; Use leuven theme
(load-theme 'leuven t)

;; No scroll-bars
(scroll-bar-mode -1)

;; Highlight the current line
(global-hl-line-mode t)

(provide 'pb-gui)
;;; pb-gui ends here