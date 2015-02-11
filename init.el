(add-to-list 'load-path (expand-file-name "conf" user-emacs-directory))


; Initialize MELPA

(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)


(require 'init-macos)
(require 'init-interface)
(require 'init-general)
(require 'init-session)
(require 'init-ruby)
(require 'init-coffee)
(require 'init-css)
(require 'init-c)
