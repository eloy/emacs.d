; Remove training whitespace before save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

; Homebrew
(push "/usr/local/bin" exec-path)

;; Yasnippet
(yas-global-mode 1)

;; Ask before close


;; auto-complete
(require 'auto-complete-config)
(ac-config-default)

;; ack and a half
(defalias 'ack 'ack-and-a-half)
(defalias 'ack-same 'ack-and-a-half-same)
(defalias 'ack-find-file 'ack-and-a-half-find-file)
(defalias 'ack-find-file-same 'ack-and-a-half-find-file-same)


;; Magit
(global-set-key (kbd "<f5>") 'magit-status)


;;======================================
;; Identation
;;======================================
;; http://www.emacswiki.org/emacs/AutoIndentation

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

(define-key global-map (kbd "RET") 'newline-and-indent)
(define-key global-map (kbd "M-5") 'query-replace)

;; Auto indent pasted code
(dolist (command '(yank yank-pop))
  (eval `(defadvice ,command (after indent-region activate)
           (and (not current-prefix-arg)
                 (member major-mode '(emacs-lisp-mode ruby-mode rspec-mode c-mode c++-mode js-mode))
                 (let ((mark-even-if-inactive transient-mark-mode))
                   (indent-region (region-beginning) (region-end) nil))))))



;; Some helpers
(defun find-first-non-ascii-char ()
  "Find the first non-ascii character from point onwards."
  (interactive)
  (let (point)
    (save-excursion
      (setq point
            (catch 'non-ascii
              (while (not (eobp))
                (or (eq (char-charset (following-char))
                        'ascii)
                    (throw 'non-ascii (point)))
                (forward-char 1)))))
    (if point
        (goto-char point)
      (message "No non-ascii characters."))))


(setq reb-re-syntax 'string)


;; Set default dictionary
(setq ispell-dictionary "english")    ;set the default dictionary


;;======================================
;; Remote machines
;;======================================


(defun connect-domoio ()
  (interactive)
  (dired "/ssh:harlock@app.domoio.com:/home/harlock"))


(defun connect-rescue ()
  (interactive)
  (dired "/ssh:harlock@rescue:/home/harlock/src"))

(defun connect-devid ()
  (interactive)
  (dired "/ssh:harlock@devid:/home/harlock"))

(defun connect-prometheus ()
  (interactive)
  (dired "/ssh:ubuntu@prometheus.sagelyhealth.com:/etc/prometheus"))

(defun connect-ray ()
  (interactive)
  (dired "/ssh:ray_user@ray:/home/ray_user/app/"))




(provide 'init-general)
