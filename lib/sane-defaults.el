;;; sane-defaults.el --- settings for the sane.
;;; Commentary:
;;; Code:

;; Start in scratch buffer
(setq inhibit-startup-screen t)
(setq inhibit-splash-screen t)

;; Use leuven, a fine built-in theme.
(load-theme 'leuven t)

;; Disable tool bar
(tool-bar-mode -1)

;; Disable scroll bar
(scroll-bar-mode -1)

;; Disable menu bar in CLI mode
(when (not (display-graphic-p))
  (menu-bar-mode -1))

;; No tabs, ever
(setq-default indent-tabs-mode nil)

;; Kill the alarm bell
(setq ring-bell-function 'ignore)

;; Move backups and autosaves to temporary dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Whitespace
(setq whitespace-style (quote (face trailing empty lines)))

;; Eshell
(setenv "PATH" (concat "/usr/local/bin:"
                       "/usr/bin:"
                       "/bin:"
                       "/usr/sbin:"
                       "/sbin:"
                       (getenv "PATH")))

(provide 'sane-defaults)
;;; sane-defaults.el ends here
