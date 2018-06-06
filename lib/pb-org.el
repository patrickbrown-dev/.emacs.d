;;; pb-org.el --- org-mode hooks.
;;;
;;; Commentary:
;;;  _  _     __  _ _  _  _  _  _  _
;;; / //_'/_///_// / //_|/ //_ /_'/
;;;
;;; Copyright (C) 2018 Patrick Arthur Brown
;;;
;;; Code:

(add-hook'
 org-mode-hook
 (lambda ()
   (setq org-publish-project-alist
         '(("org"
            :auto-preamble t
            :auto-sitemap t
            :base-directory "~/org/"
            :base-extension "org"
            :html-link-home "/"
            :html-link-up "/"
            :html-postamble "<p>&copy; 2018 Patrick Brown</p>"
            :html-htmlized-css-url "/styles.css"
            :publishing-directory "/ssh:root@pab.io:/var/www/html"
            :publishing-function org-html-publish-to-html
            :recursive t
            :section-numbers nil
            :sitemap-file-entry-format "%t"
            :sitemap-filename "index.org"
            :sitemap-sort-files anti-chronologically
            :sitemap-sort-folders last
            :sitemap-title "Index"
            :html-head "<link rel=\"stylesheet\" type=\"text/css\" href=\"/css/styles.css\" />"
            :table-of-contents nil)

           ("photos"
            :base-directory "~/org/photos/"
            :base-extension "jpg\\|gif\\|png"
            :publishing-directory "/ssh:root@pab.io:/var/www/html/photos"
            :publishing-function org-publish-attachment)))

   (auto-fill-mode t)
   (whitespace-mode t)))

(provide 'pb-org)
;;; pb-org.el ends here
