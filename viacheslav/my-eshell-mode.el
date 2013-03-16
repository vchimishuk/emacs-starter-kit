;;; my-eshell-mode.el -- Emacs eshell configuration.

(defun eshell/clear ()
  "Clear the eshell buffer."
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))

(setq eshell-highlight-prompt nil)
(setq eshell-prompt-function
      (lambda ()
        (let ((blue '(:foreground "#8ac6f2"))
              (red '(:foreground "#e5786d")))
          (concat (propertize "[" 'face blue)
                  (propertize (concat user-login-name "@" system-name " ") 'face red)
                  (propertize (file-name-nondirectory (eshell/pwd)) 'face blue)
                  (propertize (if (= (user-uid) 0) "] #" "] $") 'face blue)
                  (propertize " " 'face 'default)))))

(defun my-eshell-mode-hook ()
  (local-set-key (kbd "C-l") 'eshell/clear))

(add-hook 'eshell-mode-hook 'my-eshell-mode-hook)

;; (custom-set-faces
;;  ;; '(eshell-ls-archive ((((class color) (background dark)) (:foreground "salmon"))))
;;  ;; '(eshell-ls-directory ((((class color) (background dark)) (:foreground "Skyblue"))))
;;  ;; '(eshell-ls-executable ((((class color) (background dark)) (:foreground "palegreen"))))
;;  ;; '(eshell-ls-missing ((((class color) (background dark)) (:foreground "tomato"))))
;;  ;; '(eshell-ls-symlink ((((class color) (background dark)) (:foreground "Cyan"))))
;;  '(eshell-prompt ((t (:foreground "red")))))
