(set-language-environment 'Japanese)
(prefer-coding-system 'utf-8)

(add-hook 'text-mode-hook '(lambda () (setq tab-width 4)))
(add-hook 'java-mode-hook '(lambda () (setq tab-width 4)))
(add-hook 'perl-mode-hook '(lambda () (setq tab-width 4)))

(setq make-backup-files nil)
(setq auto-save-list-file-prefix nil)

(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

(global-set-key "\C-cj" 'goto-line)
