;;; pb-keybinds.el --- global keybindings.
;;;
;;; Commentary:
;;;  _  _     __  _ _  _  _  _  _  _
;;; / //_'/_///_// / //_|/ //_ /_'/
;;;
;;; Copyright (C) 2017 Patrick Arthur Brown
;;;
;;; Code:

(global-set-key (kbd "C-c C-u") 'comment-or-uncomment-region)
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "C-M-h") 'backward-kill-word)
(global-set-key (kbd "C-c n") 'next-buffer)
(global-set-key (kbd "C-c p") 'previous-buffer)
(global-set-key (kbd "C-c C-j") 'pb-util-top-join-line)
(provide 'pb-keybinds)
;;; pb-keybinds.el ends here
