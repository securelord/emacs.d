(global-set-key "\C-cd" 'kill-whole-line)

(global-set-key (kbd "M-w") 'clipboard-kill-ring-save)
(global-set-key (kbd "C-y") 'clipboard-yank)
(global-set-key (kbd "C-w") 'clipboard-kill-region)

;; html
(add-hook 'html-mode-hook
  (lambda ()
    (set (make-local-variable 'sgml-basic-offset) 4)))

;; highlight
(defun hl-trace ()
  (highlight-lines-matching-regexp "set_trace" 'hi-red-b))

;; pairs
(electric-pair-mode t)
;; (electric-indent-mode t)
(show-paren-mode 1)
(setq show-paren-style 'parenthesis) ;; 'expression

;; fringe
(require 'fringe)
(fringe-mode '(8 . 0))
(setq-default indicate-empty-lines t)
(setq-default indicate-buffer-boundaries 'left)

;; line wrapping
(setq word-wrap t)
(global-visual-line-mode t)

;; encodings
(setq default-buffer-file-coding-system 'utf-8)
(setq-default coding-system-for-read 'utf-8)
(setq file-name-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8-unix)

;; Line numbers
(line-number-mode   t)
(global-linum-mode  t)
(column-number-mode t)
(setq linum-format " %d")

;; new line/spaces
(setq require-final-newline t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;;Company mode
(setq company-show-numbers t)

;;Whitespace mode
(setq-default show-trailing-whitespace t)
(global-whitespace-cleanup-mode t)
