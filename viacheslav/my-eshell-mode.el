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
  ;(eshell/export "EDITOR=emacsclient")
  (setenv "EDITOR" "emacsclient")
  (local-set-key (kbd "C-l") 'eshell/clear)
  ; ansi-color-names-vector are: ["black" "red" "green" "yellow" "blue" "magenta" "cyan" "white"]
  (setq ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#e9b96e" "#8ac6f2" "#cc99cc" "Cyan" "#f6f3e8"])
  (setq ansi-color-map (ansi-color-make-color-map)))

(add-hook 'eshell-mode-hook 'my-eshell-mode-hook)

(setq eshell-aliases-file (concat "~/.emacs.d/" user-login-name "/eshell/alias"))

;; (custom-set-faces
;;  ;; '(eshell-ls-archive ((((class color) (background dark)) (:foreground "salmon"))))
;;  ;; '(eshell-ls-directory ((((class color) (background dark)) (:foreground "Skyblue"))))
;;  ;; '(eshell-ls-executable ((((class color) (background dark)) (:foreground "palegreen"))))
;;  ;; '(eshell-ls-missing ((((class color) (background dark)) (:foreground "tomato"))))
;;  ;; '(eshell-ls-symlink ((((class color) (background dark)) (:foreground "Cyan"))))
;;  '(eshell-prompt ((t (:foreground "red")))))
