;; credentials
(setq user-full-name   "Vladyslav Liubachevskyi")
(setq user-mail-address "securelord@gmail.com")

;;Global interface settings
(menu-bar-mode -1)
(tool-bar-mode -1)
(setq visible-bell t)
(scroll-bar-mode -1)
(tooltip-mode      -1)
(blink-cursor-mode -1)
(setq use-dialog-box nil)
(setq redisplay-dont-pause t)
(setq ring-bell-function 'ignore)
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(setq frame-title-format "Emacs %b")
(setq initial-scratch-message nil)

;; common
(delete-selection-mode t)
(setq confirm-kill-emacs 'y-or-n-p)
(setq system-uses-terminfo nil)
(setq indent-line-function 'insert-tab)
(setq multi-term-program "/bin/bash")
(put 'downcase-region 'disabled nil)
;(set-face-attribute 'default nil :height 140)
(setq x-select-enable-clipboard t)

(setq redisplay-dont-pause t)
;; Display file size/tmode-line
(setq display-time-24hr-format t) ;; 24-часовой временной формат в mode-line
(display-time-mode             t) ;; показывать часы в mode-line
(size-indication-mode          t) ;; размер файла в %-ах

(load-theme 'ample-zen t)

;; imenu
(setq imenu-auto-rescan t)
(setq imenu-use-popup-menu nil)

;; ido
(ido-mode t)
(icomplete-mode t)
(ido-everywhere t)
(setq ido-virtual-buffers t)
(setq ido-enable-flex-matching t)

;; buffers
(require 'bs)
(require 'ibuffer)
(defalias 'list-buffers 'ibuffer)
(global-set-key (kbd "<f2>") 'bs-show)

;; aliases
(defalias 'yes-or-no-p 'y-or-n-p)
(defalias 'rs 'replace-string)
(defalias 'sl 'sort-lines)
(defalias 'rr 'reverse-region)
(defalias 'rg 'rgrep)
(defalias 'dir 'dired)
(defalias 'fnd 'find-name-dired)
(defalias 'df 'diff-mode)
(defalias 'mt 'multi-term)
(defalias 'rb 'rename-buffer)
(defalias 'rev 'revert-buffer)
(defalias 'him 'helm-imenu)
(defalias 'hl 'highlight-phrase)
(defalias 'hlr 'highlight-regexp)
(defalias 'uhl 'unhighlight-regexp)
(defalias 'oc 'occur)
(defalias 'ms 'magit-status)
(defalias 'blame 'magit-blame)
