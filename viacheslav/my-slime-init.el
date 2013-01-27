;;; my-slime-init.el -- Slime configurations.

(add-to-list 'load-path "/usr/share/emacs/site-lisp/slime/")
(add-to-list 'ac-modes 'lisp-mode)
(require 'ac-slime)
(require 'slime)
; (require 'slime-autoloads)
; (require 'slime-fuzzy)
(require 'slime-repl)
(require 'slime-fancy)

(setq
 inferior-lisp-program "/usr/bin/sbcl"
 common-lisp-hyperspec-root "file:///usr/share/doc/HyperSpec/"
 lisp-indent-function 'common-lisp-indent-function
 slime-complete-symbol-function 'slime-fuzzy-complete-symbol
 slime-startup-animation nil)

(add-hook 'lisp-mode-hook (lambda () (slime-mode t)))
(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)
(eval-after-load "auto-complete" '(add-to-list 'ac-modes 'slime-repl-mode))

; (slime-setup '(slime-repl slime-fancy))
(slime-setup '(slime-fancy slime-asdf))

;; (eval-after-load "slime"
;;   '(progn
;;      (slime-setup '(slime-repl))
;;      (custom-set-variables
;;       '(inhibit-splash-screen t)
;;       '(slime-complete-symbol*-fancy t)
;;       '(slime-complete-symbol-function 'slime-fuzzy-complete-symbol)
;;       '(slime-net-coding-system 'utf-8-unix)
;;       '(slime-startup-animation nil)
;;       '(slime-lisp-implementations '((sbcl ("/usr/bin/sbcl")))))))
