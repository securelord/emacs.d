(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")))

(require 'package)
(package-initialize)

(setq my-packages
      '(
	whitespace-cleanup-mode
        auto-complete
        cider
        projectile
        clojure-mode
        expand-region
        helm
        jinja2-mode
        magit
        paredit
        wrap-region
	wttrin
        ))

(dolist (pkg my-packages)
  (unless (package-installed-p pkg)
    (package-install pkg)))
(setq package-check-signature nil)

;; helm
(helm-mode 1)
(global-set-key (kbd "<M-return>") 'helm-etags-select)
(global-set-key (kbd "<C-M-return>") 'select-tags-table)
(global-set-key (kbd "M-x") 'helm-M-x)
