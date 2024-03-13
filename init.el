;;; init.el --- entry point to emacs cofiguration.
;;;
;;; Commentary:
;;;
;;; Copyright (C) 2015–2024 Patrick Brown
;;;
;;; Code:

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(setq ispell-program-name "/usr/local/bin/ispell")

(unless (package-installed-p 'use-package)
  (progn
    (package-refresh-contents)
    (package-install 'use-package)))

(require 'use-package)

(use-package gnu-elpa-keyring-update
  :ensure t)

;; Load path
(add-to-list 'load-path "~/.emacs.d/lib")

;; Secrets
(when (file-exists-p "~/.emacs.d/secrets.el")
  (load "~/.emacs.d/secrets"))

;; Customization file
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(require 'pb-defaults)
(require 'pb-util)
(require 'pb-gui)
(require 'pb-cli)
(require 'pb-keybinds)
(require 'pb-org)
(require 'pb-ruby)
(require 'pb-javascript)

;;; init.el ends here
