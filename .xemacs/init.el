;; Red Hat Linux default .emacs initialization file

(setq load-path (append (list "~/.xemacs/elisp") load-path))
(setq allow-remote-paths t)

; ŇŕũūňĎų|ŇţųŰŷŹņŠ
(prefer-coding-system 'euc-jp)

; ?????Ī
(setq default-input-method "japanese-egg-wnn7")
(setq wnn7-server-name "wnnserver")

;;; auto defined with Setup_wnn7egg script ------------------
;(setq load-path (append '("/usr/share/wnn7/elisp/xemacs21") load-path))
;(global-set-key "\C-\\" 'toggle-input-method)
;(load "wnn7egg-leim")
;(if (featurep 'xemacs)
;    (select-input-method "japanese-egg-wnn7")
;  (set-input-method "japanese-egg-wnn7")
;)
;(set-input-method "japanese-egg-wnn7")
;(set-language-info "Japanese" 'input-method "japanese-egg-wnn7")

(defun toggle-egg-mode ()
  (interactive)
  (if egg:*mode-on* (fence-toggle-egg-mode)
    (progn
      (setq egg:*mode-on* t)
      (egg:mode-line-display)
	  (egg-use-input-predict)
	  )))


; ŭ|ŐŤųŉĪ
;(global-set-key [delete] 'delete-char)
;(global-set-key [kp-delete] 'delete-char)
;(global-set-key "\C-h" 'delete-backward-char) ; Back Space
;(global-set-key [f1] 'help-for-help) ; F1

(global-set-key [delete] 'scroll-down-command) ; Page Up
(global-set-key [next]   'scroll-up-command)   ; Page Down
(global-set-key [insert] 'beginning-of-line)   ; Home
(global-set-key [prior]  'end-of-line)         ; End
(global-set-key [find]   'overwrite-mode)      ; Insert

; Back Space ?5?ċ_?ĹīĨĦċĹī
; (load-library "term/bobcat")

; ????Ĳ C ċĪĹī
; (setenv "LANG" "C")

;; Always end a file with a newline
(setq require-final-newline t)

;; Stop at the end of the file, not just add lines
(setq next-line-add-newlines nil)


(global-set-key "\C-cj" 'goto-line)

; ŐŃůŢŃŗŕšŤūĲ?.ķĊĤ
(setq make-backup-files nil)

; Ū|ňŻ|ŖŪŹň?.??
(setq auto-save-list-file-prefix nil)

; inhibit start message
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

; bugfix to use jde 1.34
;(defun add-submenu (menu-path submenu &optional before in-menu)
;  ""
;  )

; font-lock Ĳŭ|ŉ(?ĄıĲ?ĊĦ)
;(load-library "font-lock")

;(defface term-white-face '((t (:bold t :italic t)))  ""  )
;(defface term-cyan-face '((t (:bold t :italic t)))  ""  )
;(defface term-magenta-face '((t (:bold nil :italic nil)))  ""  )
;(defface term-blue-face '((t (:bold nil :italic nil)))  ""  )
;(defface term-yellow-face '((t (:bold nil :italic nil)))  ""  )
;(defface term-green-face '((t (:bold nil :italic nil)))  ""  )
;(defface term-red-face '((t (:bold nil :italic nil)))  ""  )
;(defface term-defalut-face '((t (:bold nil :italic nil)))  ""  )

(setq use-kuten-for-period t)
(setq use-touten-for-comma t)

(add-hook 'java-mode-hook '(lambda () (setq tab-width 4)))
(add-hook 'perl-mode-hook '(lambda () (setq tab-width 4)))

; jde-mode
(setq auto-mode-alist
	  (append
	   '(("\\.java$" . jde-mode))
	   auto-mode-alist))
(define-key jde-mode-map "\C-c\C-vb" 'jde-ant-build)
(define-key jde-mode-map "\C-c\C-vC" 'jde-gen-console-buffer)
(define-key jde-mode-map "\C-c\C-vc" 'jde-gen-class-buffer)
(define-key jde-mode-map "\C-c\C-vm" 'jde-gen-method)
(define-key jde-mode-map "\C-c\C-vg" 'jde-gen-get-set)
(define-key jde-mode-map "\C-c\C-vs" 'jde-gen-to-string-method)
(define-key jde-mode-map "\C-c\C-vG" 'jde-wiz-get-set-methods)
(define-key jde-bug-mode-map [?\C-c ? ] 'jde-bug-toggle-breakpoint)
(define-key jde-bug-mode-map "\C-c\C-e" 'jde-bug-display-variable)
(define-key jde-bug-mode-map "\C-c\C-z\C-l" 'jde-bug-show-locals-buf)
(define-key jde-bug-mode-map "\C-c\C-z\C-q" 'jde-bug-exit)

(its-defrule "dhi" "ćģ" nil nil "roma-kana")

(defun php-mode-hook ()
  (setq tab-width 4
        c-basic-offset 4
        c-hanging-comment-ender-p nil
    indent-tabs-mode
    (not
     (and (string-match "/\\(PEAR\\|pear\\)/" (buffer-file-name))
          (string-match "\.php$" (buffer-file-name))))))

(setq c-basic-offset 4)
