;; Add some extensions
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))


;; Javascript and JSX indentation
(setq js-indent-level 2)

;; JSX (React)
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . jsx-mode))
(autoload 'jsx-mode "jsx-mode" "JSX mode" t)

;; Javascript and JSX indentation
(setq js-indent-level 2)
(setq jsx-indent-level 2)

(provide 'init-coffee)
