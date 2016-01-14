;;; neuro-keybinds.el --- where the keybindings go I suppose.
;;; Commentary:
;;; Code:

;; comment toggling
(global-set-key (kbd "C-c C-u") 'comment-or-uncomment-region)

;; make backspace key work properly when running in a terminal
(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "C-M-h") 'backward-kill-word)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-load-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c C-j") 'counsel-git-grep)
(global-set-key (kbd "C-c C-f") 'counsel-git)
(global-set-key (kbd "C-c C-k") 'counsel-ag)
(global-set-key (kbd "C-x C-l") 'counsel-locate)

(provide 'neuro-keybinds)
;;; neuro-keybinds.el ends here
