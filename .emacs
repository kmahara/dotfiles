(set-language-environment 'Japanese)
(prefer-coding-system 'utf-8)

; for emacs-21.4
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)

; タブ設定
(setq-default tab-width 4)
(setq-default c-basic-offset 4)
(setq-default indent-tabs-mode t)

; for eamcs-23
(setq indent-line-function 'tab-to-tab-stop)
; for emacs-24
; (setq indent-line-function 'indent-to-left-margin)

(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60
                      64 68 72 76 80 84 88 92 96 100 104 108 112 116 120))

(add-hook 'text-mode-hook
		    (lambda ()
			      (setq indent-line-function 'tab-to-tab-stop)))

;(add-hook 'text-mode-hook '(lambda () (setq tab-width 4)))
;(add-hook 'java-mode-hook '(lambda () (setq tab-width 4)))
;(add-hook 'perl-mode-hook '(lambda () (setq tab-width 4)))

; 色をつけない
(global-font-lock-mode nil)

; リージョン内を置換できるようにする
(setq transient-mark-mode t)

(setq load-path (append (list (expand-file-name "~/.emacs.d/elisp/")) load-path))

(load-library "term/bobcat")

;;行番号の表示
(global-linum-mode t)
(setq linum-format "%4d:")

;; 対応する括弧を光らせる
(setq show-paren-delay 0)
(setq show-paren-style 'single)
(show-paren-mode t)

;; 行末の空白をハイライト
 (when (boundp 'show-trailing-whitespace)
   (setq-default show-trailing-whitespace t))

; その他設定
(setq make-backup-files nil)
(setq auto-save-list-file-prefix nil)

(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

(global-set-key "\C-cj" 'goto-line)
(global-set-key "\C-cd" 'kill-whole-line)

; =================================================================
; php

; Indentation of arrays
; http://www.emacswiki.org/emacs/PhpMode#toc16
(add-hook 'php-mode-hook (lambda ()
    (defun ywb-php-lineup-arglist-intro (langelem)
      (save-excursion
        (goto-char (cdr langelem))
        (vector (+ (current-column) c-basic-offset))))
    (defun ywb-php-lineup-arglist-close (langelem)
      (save-excursion
        (goto-char (cdr langelem))
        (vector (current-column))))
    (c-set-offset 'arglist-intro 'ywb-php-lineup-arglist-intro)
    (c-set-offset 'arglist-close 'ywb-php-lineup-arglist-close)))


; =================================================================
; apache-mode

(autoload 'apache-mode "apache-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.htaccess\\'"   . apache-mode))
(add-to-list 'auto-mode-alist '("httpd\\.conf\\'"  . apache-mode))
