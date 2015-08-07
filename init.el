;;; init.el --- entry point to emacs config
;;; Commentary:
;;; Code:

;; Melpa setup
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)

;; Install use-package if doesn't exist.
(if (not (package-installed-p 'use-package))
    (progn
      (package-refresh-contents)
      (package-install 'use-package)))
(require 'use-package)

;; Load path
(setq load-path (cons "~/.emacs.d/lib" load-path))

;; Secrets
(if (file-exists-p "~/.emacs.d/secrets.el")
    (load "~/.emacs.d/secrets"))

(require 'sane-defaults)
(require 'keybinds)
(require 'default-modes)
(require 'ruby-modes)
(require 'elixir-modes)
(require 'haskell-modes)
(require 'javascript-modes)

;; Enable the wonders of Emacs client and server interaction
(if (display-graphic-p) (server-start))

;;; init.el ends here
