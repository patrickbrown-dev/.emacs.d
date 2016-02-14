;;; pb-util.el --- some utility functions
;;;
;;; Commentary:
;;; Copyright (C) 2016 by Patrick Arthur Brown
;;;
;;; Code:
(defun fizzbuzz (n)
  "Find the fizzbuzz of N."
  (pcase (list (mod n 3) (mod n 5))
    (`(0 0) "fizzbuzz")
    (`(0 ,_) "fizz")
    (`(,_ 0) "buzz")
    (_ n)))

(defun fib (n)
  "Find the fibonacci of N."
  (pcase n
    (`0 0)
    (`1 1)
    (n (+ (fib (- n 2)) (fib (- n 1))))))

(defun counsel-bash-history ()
  "Yank the bash history"
  (interactive)
  (let (hist-cmd collection val)
    (shell-command "history -r") ; reload history
    (setq collection
          (nreverse
           (split-string (with-temp-buffer (insert-file-contents (file-truename "~/.bash_history"))
                                           (buffer-string))
                         "\n"
                         t)))
    (when (and collection (> (length collection) 0)
               (setq val (if (= 1 (length collection)) (car collection)
                           (ivy-read (format "Bash history:") collection))))
      (kill-new val)
      (message "%s => kill-ring" val))))

(provide 'pb-util)
;;; pb-util ends here
