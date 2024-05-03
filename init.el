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

(org-babel-load-file "~/.emacs.d/README.org")

(use-package gnu-elpa-keyring-update
  :ensure t)

;;; init.el ends here
