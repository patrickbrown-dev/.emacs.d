;;; neuro-keybinds.el --- where the keybindings go I suppose.
;;; Commentary:
;;; Code:

;; comment toggling
(global-set-key (kbd "C-c C-u") 'comment-or-uncomment-region)

;; make backspace key work properly when running in a terminal
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "C-M-h") 'backward-kill-word)

(provide 'neuro-keybinds)
;;; neuro-keybinds.el ends here
