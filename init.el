(package-initialize)

(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory)
         user-emacs-directory)
        ((boundp 'user-init-directory)
         user-init-directory)
        (t "~/.emacs.d/")))

(load "~/.emacs.d/lisp/general.el")
(load "~/.emacs.d/lisp/editor.el")
(load "~/.emacs.d/lisp/packages.el")
(load "~/.emacs.d/lisp/orgmode.el")
(load "~/.emacs.d/lisp/cider.el")
(load "~/.emacs.d/lisp/elfeed.el")
(load "~/.emacs.d/lisp/weather.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (git egg whitespace-cleanup-mode wttrin forecast elfeed company org-manage ctable auto-org-md spinner cider paredit jinja2-mode expand-region clojure-mode auto-complete wrap-region tramp-theme tramp-term magit helm org-manage))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
