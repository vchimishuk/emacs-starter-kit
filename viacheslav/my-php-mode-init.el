;;; my-php-mode-init.el -- Custom php-mode settings.

(autoload 'php-mode "php-mode.el" "PHP mode." t)
(setq auto-mode-alist (append '(("/*.\.php[345]?$" . php-mode)) auto-mode-alist))
(add-hook 'php-mode-hook (lambda ()
                           (setq indent-tabs-mode nil)
                           (setq tab-width 4)
                           (setq c-basic-offset 4)
                           ; Yii-style fixes
                           (c-set-offset 'arglist-intro '+)
                           (c-set-offset 'arglist-close 0)))
