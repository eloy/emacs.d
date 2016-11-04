;; Disable menubar
(menu-bar-mode -1)
 (when (functionp 'scroll-bar-mode)
   (scroll-bar-mode -1))

(delete-selection-mode t)
(tool-bar-mode -1)
(column-number-mode t)



;; My themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'harlock t)


;; Font size
(set-face-attribute 'default nil :height 120)

(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq inhibit-startup-message t)

(fset 'yes-or-no-p 'y-or-n-p)

;; Coloreado de sinaxsis
(global-font-lock-mode 1)

;; Colorea parentesis
(show-paren-mode 1)

; Numeros de linea
(global-linum-mode 1)

;;  Enable CUA Mode
(cua-mode 1)

;; Enable IDO mode
(ido-mode t)

(provide 'init-interface)
