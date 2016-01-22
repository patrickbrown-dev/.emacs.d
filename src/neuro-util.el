;;; neuro-util.el --- some utility functions
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

(defun test ()
  "Nested."
  (defun nested ()
    "Nested defun."
    "this was a tested defun")
  "so was this")

(provide 'neuro-util)
;;; neuro-util ends here
