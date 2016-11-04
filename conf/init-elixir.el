(add-to-list 'auto-mode-alist '("\\.eex\\'" . web-mode))
(setq web-mode-markup-indent-offset 2)
(setq web-mode-engines-alist
      '(
        ("elixir"    . "\\.eex\\'")
        )
      )



(defun modernize-hash (start end)
  "Replace old hash sintax with the new one"
  (interactive "r")
  (replace-regexp "\"\\([a-zA-Z0-9_]+\\)\"\s?=>\s?" "\\1: " nil start end))

(provide 'init-elixir)
