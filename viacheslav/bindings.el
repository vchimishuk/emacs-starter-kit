;;; bindings.el -- User (mine, voice@root.ua) custom key bindings.

;;; Some custom keybindings.
(global-set-key "\C-cg" 'goto-line)
(global-set-key "\C-ca" 'beginning-of-buffer)
(global-set-key "\C-ce" 'end-of-buffer)
(global-set-key [(control h)] 'delete-backward-char)
(global-set-key "\C-ch" 'help-command)
(global-set-key [(control w)] 'backward-kill-word)
(global-set-key "\C-ck" 'kill-region)
; (global-set-key "\C-[" 'dabbrev-expand)
;; Windows resizing.
(global-set-key (kbd "C-C <left>") 'shrink-window-horizontally)
(global-set-key (kbd "C-C <right>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-C <up>") 'shrink-window)
(global-set-key (kbd "C-C <down>") 'enlarge-window)

