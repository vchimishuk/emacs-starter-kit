;;; my-bindings.el -- User (mine, voice@root.ua) custom key bindings.

;;; Some custom keybindings.
(global-set-key "\C-cg" 'goto-line)
(global-set-key "\C-ca" 'beginning-of-buffer)
(global-set-key "\C-ce" 'end-of-buffer)
(global-set-key [(control h)] 'delete-backward-char)
(global-set-key "\C-ch" 'help-command)
(global-set-key [(control w)] 'backward-kill-word)
(global-set-key "\C-ck" 'kill-region)
(global-set-key "\C-cc" 'comment-or-uncomment-region)
(global-set-key (kbd "<S-return>") (kbd "C-e C-j"))
; (global-set-key "\C-[" 'dabbrev-expand)
;; Windows resizing.
(global-set-key (kbd "C-C <left>") 'shrink-window-horizontally)
(global-set-key (kbd "C-C <right>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-C <up>") 'shrink-window)
(global-set-key (kbd "C-C <down>") 'enlarge-window)
;; Keyboard hothey binginds for Runssian and Ukrainian input language
;; mode fix.
(define-key function-key-map [(control ?т)] [(control ?n)])
(define-key function-key-map [(control ?з)] [(control ?p)])
(define-key function-key-map [(control ?а)] [(control ?f)])
(define-key function-key-map [(control ?и)] [(control ?b)])
(define-key function-key-map [(control ?в)] [(control ?d)])
