;; add melpa as package source
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(package-initialize)


;; company autocomplete frameworks
(require 'company)
(setq company-minimum-prefix-length 1
      company-show-numbers t)
(add-hook 'after-init-hook 'global-company-mode)

;; google translate service
(require 'google-translate)
(require 'google-translate-default-ui)

(setq google-translate-default-source-language "en"
      google-translate-default-target-language "zh-TW")

(global-set-key (kbd "C-c g t") 'google-translate-at-point)

;; rainbow delimiters
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; some Emacs default settings
(setq inhibit-startup-message t)
(setq auto-save-default nil)
(setq frame-title-format (list "All Hail Emacs!"))
(setq backup-inhibited t)

(menu-bar-mode -1)
(tool-bar-mode -1)
(electric-pair-mode t)
(electric-indent-mode t)

(setq-default indent-tabs-mode nil
              tab-width 2)


(defalias 'yes-or-no-p 'y-or-n-p)

;; show line numbers in programming mode
(add-hook 'prog-mode-hook
	  (lambda () (interactive)
	    (linum-mode 1)))

;; define some global key-map
(global-set-key (kbd "C-x ,") 'previous-buffer)
(global-set-key (kbd "C-x .") 'next-buffer)
(global-set-key (kbd "C-x /") '(lambda ()
                                 (interactive)
                                 (kill-buffer)))
(global-set-key (kbd "C-d") 'comment-line)

(set-fontset-font t 'han (font-spec :family "Note Sans Mono CJK TC"))
(set-face-attribute 'default nil :font "Hack 11")

;; theme settings
(require 'doom-themes)
(setq doom-themes-enable-bold t
      doom-themes-enable-italic t)

(load-theme 'doom-molokai t)


(provide 'setup-general)
