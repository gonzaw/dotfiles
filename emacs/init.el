(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-default-init t)
 ;; Variable para markdown-mode para utilizar pandoc
 '(markdown-command "pandoc")
)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Uso de git
(require 'git)

;; Workaround for idris-mode to function
;; https://github.com/idris-hackers/idris-mode/issues/379
(require 'cl)

;; Email
(setq user-mail-address "gonzaw308@gmail.com")

;; Encoding
(set-language-environment 'utf-8)
(set-default-coding-systems 'utf-8)
(set-default-coding-systems 'utf-8)
(set-selection-coding-system 'utf-8)
(set-locale-environment "en.UTF-8")
(prefer-coding-system 'utf-8)
(setq utf-translate-cjk-mode nil) ; disable CJK coding/encoding


;; Undo
(global-set-key (kbd "C-z") 'undo)

;; Para poder mover buffers
(require 'buffer-move)
(global-set-key (kbd "C-c <C-up>")     'buf-move-up)
(global-set-key (kbd "C-c <C-down>")   'buf-move-down)
(global-set-key (kbd "C-c <C-left>")   'buf-move-left)
(global-set-key (kbd "C-c <C-right>")  'buf-move-right)
