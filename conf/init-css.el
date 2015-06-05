(setq scss-compile-at-save nil)

;; Enable rainbow-mode for css
(defun turn-on-rainbow () (rainbow-mode 1))
(add-hook 'css-mode-hook 'turn-on-rainbow)


(provide 'init-css)
