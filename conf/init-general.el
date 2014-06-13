; Remove training whitespace before save
(add-hook 'before-save-hook 'delete-trailing-whitespace)


; Homebrew
(push "/usr/local/bin" exec-path)

(provide 'init-general)
