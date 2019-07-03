;; gc
(setq gc-cons-threshold (* 20 1024 1024))
(setq garbage-collection-messages t)
;; language
(set-language-environment 'Japanese)
(prefer-coding-system 'utf-8)
;; Disable *.~
(setq make-backup-files nil)
;; Diable .#*
(setq auto-save-default nil)
(setq auto-save-list-file-prefix nil)
;; 行番号をつける
(global-linum-mode t)
(setq linum-format "%4d:")
;; カーソル位置を表示
(column-number-mode t)
;; tab
(setq-default tab-width 8)
(setq-default c-basic-offset 8)
(setq-default indent-tabs-mode t)
;; startup message
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)
;; 対応する括弧を光らせる
(show-paren-mode t)
(setq show-paren-delay 0)
;(setq show-paren-style 'expression)
;; 行末の空白をハイライト
(when (boundp 'show-trailing-whitespace)
  (setq-default show-trailing-whitespace t))
;; キー設定
(global-set-key "\C-cj" 'goto-line)
(global-set-key "\C-cd" 'kill-whole-line)
;; Enter 押下時に自動インデントする
(electric-indent-mode t)
;; C-h は delete
;(global-set-key "\C-h" 'delete-backward-char)
;;BEEP disable
(setq ring-bell-function 'ignore)

;; =================================================================
;; パッケージ管理

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; vc-git を読み込まない
(remove-hook 'find-file-hook 'vc-find-file-hook)

;; company-mode
(when (package-installed-p 'company)
  (progn
     (global-company-mode t)
      ;; オートコンプリートしない
     (setq company-idle-delay nil)
     ;; (setq company-auto-expand t) ;; 1個目を自動的に補完
     (setq company-transformers '(company-sort-by-backend-importance)) ;; ソート順
     (setq company-selection-wrap-around t) ; 候補の一番下でさらに下に行こうとすると一番上に戻る
     ;(define-key company-active-map (kbd "TAB") 'company-complete-selection) ;; TABで候補を設定
     ;; TODO インデント直後は効かないようにしたい
     (global-set-key "\t" 'company-indent-or-complete-common) ; tab で候補表示
     (define-key company-active-map (kbd "TAB") 'company-abort); 候補表示中に TAB 押したらキャンセル

     ;; 未選択項目
     (set-face-attribute 'company-tooltip nil
			 :foreground "black" :background "lightgrey")
     ;; 未選択＆一致文字
     (set-face-attribute 'company-tooltip-common nil
			 :foreground "black" :background "lightgrey")
     ;; 選択項目
     (set-face-attribute 'company-tooltip-common-selection nil
			 :foreground "white" :background "steelblue")
     ;; 選択項目＆一致文字
     (set-face-attribute 'company-tooltip-selection nil
			 :foreground "black" :background "steelblue")
     (set-face-attribute 'company-preview-common nil
			 :background nil :foreground "lightgrey" :underline t)
     ;; スクロールバー
     (set-face-attribute 'company-scrollbar-fg nil
			 :background "orange")
     ;; スクロールバー背景
     (set-face-attribute 'company-scrollbar-bg nil
			 :background "gray40")

     ))

;; company-quickhelp
(when (package-installed-p 'company-quickhelp)
  (progn
     (company-quickhelp-mode t)
     ))

;; php-mode
;; https://qiita.com/tadsan/items/a76768439869f00a4e89
(add-hook 'php-mode-hook
  '(lambda()
     (setq tab-width 8)
     (setq indent-tabs-mode t)
     (setq c-basic-offset 8)
     (add-to-list 'company-backends 'company-ac-php-backend)
     (define-key php-mode-map  (kbd "C-]") 'ac-php-find-symbol-at-point)   ;goto define
     (define-key php-mode-map  (kbd "C-t") 'ac-php-location-stack-back   ) ;go back
     ))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))
