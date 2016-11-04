;; Add some extensions
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))


;; Javascript and JSX indentation
(setq js-indent-level 2)

;; JSX (React)
;; (add-to-list 'auto-mode-alist '("\\.jsx\\'" . jsx-mode))
;;(autoload 'jsx-mode "jsx-mode" "JSX mode" t)

;; JS2
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.jsx?\\'" . js2-jsx-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-jsx-mode))
(setq js2-strict-missing-semi-warning nil)
(setq js2-basic-offset 2)





;; Javascript and JSX indentation
(setq js-indent-level 2)
(setq jsx-indent-level 2)







(provide 'init-coffee)
