(add-to-list 'load-path (expand-file-name "conf" user-emacs-directory))


; Initialize MELPA

(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)

(add-to-list 'package-archives
             '("org" . "https://orgmode.org/elpa/") t)

(package-initialize)


(require 'init-macos)
(require 'init-interface)
(require 'init-general)
(require 'init-session)
(require 'init-ruby)
(require 'init-coffee)
(require 'init-css)
(require 'init-c)
(require 'init-org)
(require 'init-elixir)
(require 'init-python)

(put 'upcase-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (json-mode htmlize org rjsx-mode scala-mode yaml-mode web-mode slim-mode scad-mode ruby-electric rspec-mode rhtml-mode rainbow-mode ob-elixir markdown-mode magit lua-mode js2-mode glsl-mode elixir-yasnippets elixir-mode csv-mode coffee-mode cmake-mode auto-complete-c-headers ack-and-a-half ac-inf-ruby))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
