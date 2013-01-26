; (add-hook 'before-save-hook #'gofmt-before-save)

; Enable auto-complete mode by default for go-mode.
(add-to-list 'ac-modes 'go-mode)
(require 'go-autocomplete)
