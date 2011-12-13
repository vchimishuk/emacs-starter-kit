;;; javascript-mode.el -- Custom javascript-mode settings.

(add-hook 'js-mode-hook (lambda ()
                          (setq indent-tabs-mode nil)
                          (setq js-indent-level 4)))
