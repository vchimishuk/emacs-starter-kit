;;; viacheslav.el --- User (mine, voice@root.ua) specified configurations.

;; Some minor stuff.
(setq visible-bell nil)
(setq make-backup-files nil) ; Don't make backup files
(setq scroll-step 1)
(setq split-width-threshold 200) ; Play with this when autocompletion makes window spli

;; Color theme.
(color-theme-wombat)
;; ido mode colors customization for wombat theme.
(custom-set-faces
  '(ido-first-match                ;-face
    ((((class color)(min-colors 88))
      (:foreground "#cae682"))))
 '(ido-only-match                 ;-face
   ((((class color)(min-colors 88))
      (:foreground "#cae682"))))
 '(ido-subdir                     ;-face
   ((((class color)(min-colors 88))
     (:foreground "#64a8d8")))))
 ;; '(ido-indicator                  ;-face
 ;;   ((((class color)(min-colors 88))
 ;;     (:foreground "forestgreen" :background "yellow" :bold t)))
 ;;   (t (:inverse-video t))))
