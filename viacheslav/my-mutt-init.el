;;; my-mutt-init.el -- Buffer customization when editing mutt emails.

;; Turn on flyspell-mode.
(add-hook 'find-file-hook
          (lambda ()
            (if (string-match (concat "^mutt-" system-name "-")
                              (file-name-nondirectory (buffer-file-name)))
                (progn
                  (flyspell-mode t)
                  (ispell-change-dictionary "ru")))))
