(set-language-environment 'Japanese)
(prefer-coding-system 'utf-8)

; for emacs-21.4
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)


(setq-default tab-width 4)
(setq-default c-basic-offset 4)
(setq-default indent-tabs-mode t)

;(add-hook 'text-mode-hook '(lambda () (setq tab-width 4)))
;(add-hook 'java-mode-hook '(lambda () (setq tab-width 4)))
;(add-hook 'perl-mode-hook '(lambda () (setq tab-width 4)))

(setq make-backup-files nil)
(setq auto-save-list-file-prefix nil)

(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

(global-set-key "\C-cj" 'goto-line)
(global-set-key "\C-cd" 'kill-whole-line)

; 色をつけない
(global-font-lock-mode nil)

; リージョン内を置換できるようにする
(setq transient-mark-mode t)

(setq load-path (append (list (expand-file-name "~/.emacs.d/elisp/")) load-path))

(load-library "term/bobcat")
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
