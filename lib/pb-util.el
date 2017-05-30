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

(defun pb-find-tags-file ()
  "Recursively search each parent directory for a file named 'TAGS' and return
the path to that file or nil if a tags file is not found.  Returns nil if the
buffer is not visiting a file"
  (progn
    (defun find-tags-file-r (path)
      "find the tags file from the parent directories"
      (let* ((parent (file-name-directory path))
             (possible-tags-file (concat parent "TAGS")))
        (cond
         ((file-exists-p possible-tags-file) (throw 'found-it possible-tags-file))
         ((string= "/TAGS" possible-tags-file) (error "No tags file found"))
         (t (find-tags-file-r (directory-file-name parent))))))

    (if (buffer-file-name)
        (catch 'found-it
          (find-tags-file-r (buffer-file-name)))
      (error "Buffer is not visiting a file"))))

(defun pb-set-tags-file-path ()
  "calls `pb-find-tags-file' to recursively search up the directory tree to find
a file named 'TAGS'. If found, set 'tags-table-list' with that path as an argument
otherwise raises an error."
  (interactive)
  (let ((tag-file (pb-find-tags-file)))
    (when tag-file
      (unless (member tag-file tags-table-list)
        (setq tags-table-list (cons tag-file tags-table-list))))))

(setq pb-path-to-ctags "/usr/local/bin/ctags")

(defun pb-create-tags (dir-name)
  "Create tags file.  DIR-NAME is the name of the root directory."
  (interactive "DDirectory: ")
  (shell-command
   (format "%s -f TAGS -e -R %s" pb-path-to-ctags (directory-file-name dir-name))))

(provide 'pb-util)
;;; pb-util ends here
