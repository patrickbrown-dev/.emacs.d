;;; init.el --- entry point to the neuromancer emacs cofiguration.
;;;
;;; Commentary:
;;;  _  _     __  _ _  _  _  _  _  _
;;; / //_'/_///_// / //_|/ //_ /_'/
;;;
;;; Copyright (C) 2016 Patrick Arthur Brown
;;;
;;; Code:
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)

(setq ispell-program-name "/usr/local/bin/ispell")

(defun require-package (pkg)
  "If PKG isn't installed, check melpa and install it."
  (if (not (package-installed-p pkg))
    (progn
      (package-refresh-contents)
      (package-install pkg)))
  (require pkg))

(require-package 'use-package)

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
(require 'neuro-java)
(require 'neuro-elixir)
;;; init.el ends here
