;;; my-auto-complete-init.el -- Emacs AutoComplete configuration.

;(add-to-list 'load-path "~/.emacs.d/viacheslav/auto-complete")
(require 'auto-complete)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-1.4/dict")
(ac-config-default)
