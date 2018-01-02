(define-key global-map (kbd "C-c l") 'org-store-link)
(define-key global-map (kbd "C-c a") 'org-agenda)

(load-library "find-lisp")
(setq org-agenda-files (find-lisp-find-files "/mnt/win/remote/org" "\.org$"))
(setq org-manage-directory-org "/mnt/win/remote/org/")

(setq org-capture-templates '(("t" "Todo [inbox]" entry
                               (file+headline "/mnt/win/remote/org/inbox.org" "Tasks")
                               "* TODO %i%?")
                              ))

(setq org-refile-targets '(("/mnt/win/remote/org/refile.org" :maxlevel . 3)))

(setq org-todo-keywords '((sequence "TODO(t)" "WAITING(w)" "|" "DONE(d)" "CANCELLED(c)")))

(setq org-agenda-custom-commands
      '(("o" "At the office" tags-todo "@office"
         (org-agenda-overriding-header "Office"))
	("h" "At home" tags-todo "@home"
	 (org-agenda-overriding-header "Home"))))
