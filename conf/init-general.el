; Remove training whitespace before save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

; Homebrew
(push "/usr/local/bin" exec-path)

;; Yasnippet
(yas-global-mode 1)


;; ack and a half
(defalias 'ack 'ack-and-a-half)
(defalias 'ack-same 'ack-and-a-half-same)
(defalias 'ack-find-file 'ack-and-a-half-find-file)
(defalias 'ack-find-file-same 'ack-and-a-half-find-file-same)



;;======================================
;; Identation
;;======================================
;; http://www.emacswiki.org/emacs/AutoIndentation

(define-key global-map (kbd "RET") 'newline-and-indent)


;; Auto indent pasted code
(dolist (command '(yank yank-pop))
  (eval `(defadvice ,command (after indent-region activate)
           (and (not current-prefix-arg)
                 (member major-mode '(emacs-lisp-mode ruby-mode rspec-mode c-mode c++-mode js-mode))
                 (let ((mark-even-if-inactive transient-mark-mode))
                   (indent-region (region-beginning) (region-end) nil))))))



(provide 'init-general)
