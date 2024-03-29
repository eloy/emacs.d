;; http://lorefnon.me/2014/02/02/configuring-emacs-for-rails.html

;; Files with ruby mode
;; (add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
;; (add-to-list 'auto-mode-alist '("\\.json.rabl$" . ruby-mode))
;; (add-to-list 'auto-mode-alist '("\\.json.jbuilder$" . ruby-mode))
;; (add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
;; (add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
;; (add-to-list 'auto-mode-alist '("\\.html.erb" . poly-html+erb-mode))


;; Sane indentation
(setq ruby-deep-indent-paren nil)


;; Fix stupid bug in electric mode
(defun ruby-insert-end ()
  "Insert \"end\" at point and reindent current line."
  (interactive)
  (insert "end")
  (ruby-indent-line t)
  (end-of-line))



;; Enable Flymake
;; (require 'flymake-ruby)
;; (add-hook 'ruby-mode-hook 'flymake-ruby-load)



;; Robe
;; (require 'robe)
;; (add-hook 'ruby-mode-hook 'robe-mode)
;; (add-hook 'after-init-hook 'global-company-mode)

                                        ; Homebrew
(push "/usr/local/bin" exec-path)

;; rbenv
(setq exec-path (cons "/usr/local/bin" exec-path))
(setenv "PATH" (concat "/usr/local/bin" ":" (getenv "PATH")))

(setq exec-path (cons "~/.rbenv/bin" exec-path))
(setenv "PATH" (concat "~/.rbenv/bin" ":" (getenv "PATH")))
(setq exec-path (cons "~/.rbenv/shims" exec-path))
(setenv "PATH" (concat "~/.rbenv/shims" ":" (getenv "PATH")))



;; Enable electric mode
;; (eval-after-load "ruby-mode"
;; 	'(add-hook 'ruby-mode-hook 'ruby-electric-mode))



;; Enable auto-complete
;; (eval-after-load 'auto-complete
;;   '(add-to-list 'ac-modes 'inf-ruby-mode))
;; (add-hook 'inf-ruby-mode-hook 'ac-inf-ruby-enable)

;; Assign tab
(eval-after-load 'inf-ruby '
  '(define-key inf-ruby-mode-map (kbd "TAB") 'auto-complete))

;; Enable inf-ruby
(eval-after-load "ruby-mode"
  '(add-hook 'ruby-mode-hook 'inf-ruby-minor-mode))

;; Enable inf-ruby
(eval-after-load "ruby-mode"
  '(add-hook 'ruby-mode-hook 'auto-complete-mode))


;; Enable yaml mode
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))


;; CUSTOM FUNC
(defun ruby-modernize-hash (start end)
  "Replace old hash sintax with the new one"
  (interactive "r")
  (replace-regexp ":\\(\\w+\\)\s?=>\s?" "\\1: " nil start end))

(eval-after-load "ruby-mode"
  '(global-set-key (kbd "C-c . m") 'ruby-modernize-hash))



(defun ruby-let-to-sexp (start end)
  "Replace let! with standard assignment"
  (interactive "r")
  (replace-regexp "let!?(:\\(.+\\))\s*{\s*\\(.+\\)\s*}" "\\1 = \\2 " nil start end))

(eval-after-load "ruby-mode"
  '(global-set-key (kbd "C-c . L") 'ruby-let-to-sexp))



(defun rspec-update_syntax (start end)
  "Replace Rspec should syntax"
  (interactive "r")
  (replace-regexp "\\([\(\)\.:-_A-Za-z0-9]+\\).should" "expect(\\1).to" nil start end))

(eval-after-load "rspec-mode"
  '(global-set-key (kbd "<f8>") 'rspec-update_syntax))




(provide 'init-ruby)
