;;; pb-util.el --- some utility functions
;;;
;;; Commentary:
;;; Copyright (C) 2016 by Patrick Arthur Brown
;;;
;;; Code:

(defun pb-util-top-join-line ()
  "Join the current line with the line beneath it."
  (interactive)
  (delete-indentation 1))

(provide 'pb-util)
;;; pb-util ends here
