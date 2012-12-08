;;; my-eshell-mode.el -- Emacs eshell configuration.

(defun eshell/clear ()
  "Clear the eshell buffer."
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))

(defun my-eshell-mode-hook ()
  (local-set-key (kbd "C-l") 'eshell/clear))

(add-hook 'eshell-mode-hook 'my-eshell-mode-hook)
