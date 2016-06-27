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

(unless (package-installed-p 'use-package)
  (progn
    (package-refresh-contents)
    (package-install 'use-package)))

(require 'use-package)

;; Load path
(setq load-path (cons "~/.emacs.d/lib" load-path))

;; Secrets
(when (file-exists-p "~/.emacs.d/secrets.el")
  (load "~/.emacs.d/secrets"))

;; Customization file
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(require 'pb-defaults)
(require 'pb-util)
(if (display-graphic-p)
    (require 'pb-gui)
  (require 'pb-cli))
(require 'pb-keybinds)
(require 'pb-ruby)
(require 'pb-python)
(require 'pb-elixir)
(require 'pb-haskell)
(require 'pb-rust)

;;; init.el ends here
