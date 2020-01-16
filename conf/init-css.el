(setq scss-compile-at-save nil)

;; Enable rainbow-mode for css
(defun turn-on-rainbow () (rainbow-mode 1))
(add-hook 'css-mode-hook 'turn-on-rainbow)
;; (add-hook 'scss-mode-hook 'turn-on-rainbow)

(add-to-list 'auto-mode-alist '("\\.scss\\'" . css-mode))
(setq css-indent-offset 2)

(provide 'init-css)
