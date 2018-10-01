;; (require 'org-publish)
(setq org-publish-project-alist
      '(
        ("unicojs"               ;Used to export .org file
         :base-directory "~/src/org/unicojs_site/src/org/"  ;directory holds .org files
         :base-extension "org"     ;process .org file only
         :publishing-directory "~/src/org/unicojs_site/"    ;export destination
                                        ;:publishing-directory "/ssh:user@server" ;export to server
         :recursive t
         :publishing-function org-html-publish-to-html
         ;; :headline-levels 4               ; Just the default for this project.
         :auto-preamble t
         :auto-sitemap t                  ; Generate sitemap.org automagically...
         :sitemap-filename "sitemap.org"  ; ... call it sitemap.org (it's the default)...
         :sitemap-title "Sitemap"         ; ... with title 'Sitemap'.
         :export-creator-info nil    ; Disable the inclusion of "Created by Org" in the postamble.
         :export-author-info nil     ; Disable the inclusion of "Author: Your Name" in the postamble.
         :auto-postamble nil         ; Disable auto postamble
         :table-of-contents t        ; Set this to "t" if you want a table of contents, set to "nil" disables TOC.
         :section-numbers nil        ; Set this to "t" if you want headings to have numbers.
         :html-postamble nil         ; "<p class=\"postamble\">Last Updated %d.</p> " ; your personal postamble
         :style-include-default nil  ;Disable the default css style
         )
        ))


(defun eloy/export-html-body (arg)
  (interactive "P")
  (org-html-export-to-html arg nil nil t))


(defun my-init-org-mode()
  (define-key org-mode-map (kbd "C-c p") 'org-publish-current-project)
  (define-key org-mode-map (kbd "<f9> b") 'eloy/export-html-body)
  )

;; Enable Flyspell
(add-hook 'org-mode-hook 'turn-on-flyspell)
(add-hook 'org-mode-hook 'my-init-org-mode)
(provide 'init-org)


(setq org-src-fontify-natively t)

(global-set-key (kbd "<f9> x") 'bh/test)




(setq ispell-program-name "hunspell")
(defun endless/org-ispell ()
  "Configure `ispell-skip-region-alist' for `org-mode'."
  (make-local-variable 'ispell-skip-region-alist)
  (add-to-list 'ispell-skip-region-alist '(org-property-drawer-re))
  (add-to-list 'ispell-skip-region-alist '("~" "~"))
  (add-to-list 'ispell-skip-region-alist '("=" "="))
  (add-to-list 'ispell-skip-region-alist '("^#\\+BEGIN_SRC" . "^#\\+END_SRC")))
(add-hook 'org-mode-hook #'endless/org-ispell)
