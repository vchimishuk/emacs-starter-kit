;;; my-magit-mode-init.el -- My magit-mode customizations.

(defun my-magit-mode-hook ()
  ; (when (not window-system)
  ;  (set-face-background 'magit-item-highlight "black"))
  (set-face-foreground 'magit-diff-add wombat-green)
  (set-face-background 'magit-diff-add wombat-bg)
  (set-face-foreground 'magit-diff-del wombat-red-1)
  (set-face-background 'magit-diff-del wombat-bg)
  (set-face-background 'magit-whitespace-warning-face wombat-red-1)
  (set-face-background 'magit-item-highlight wombat-gray))

(add-hook 'magit-mode-hook 'my-magit-mode-hook)
