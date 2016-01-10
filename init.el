;;; init.el --- entry point to the neuromancer emacs cofiguration.
;;; Commentary:
;;   _  _     __  _ _  _  _  _  _  _
;;  / //_'/_///_// / //_|/ //_ /_'/
;;
;;  © 2015 Patrick Arthur Brown, All Rights Reserved
;;
;;; Code:

;; Melpa setup
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)

(setq ispell-program-name "/usr/local/bin/ispell")

;; Install use-package if doesn't exist.
(if (not (package-installed-p 'use-package))
    (progn
      (package-refresh-contents)
      (package-install 'use-package)))
(require 'use-package)

;; Load path
(setq load-path (cons "~/.emacs.d/src" load-path))

;; Secrets
(if (file-exists-p "~/.emacs.d/secrets.el")
    (load "~/.emacs.d/secrets"))

;; Customization file
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(require 'neuro-defaults)
(if (display-graphic-p)
    (require 'neuro-gui)
   (require 'neuro-cli))
(require 'neuro-keybinds)
(require 'neuro-ruby)
(require 'neuro-elixir)
(require 'neuro-haskell)
(require 'neuro-javascript)
(require 'neuro-rust)

;;; init.el ends here
