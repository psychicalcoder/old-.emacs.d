(require 'helm-config)
(require 'helm)

(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-c h g") 'helm-google-suggest) 

(helm-autoresize-mode t)

(setq helm-M-x-fuzzy-match t
      helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match t)

(helm-mode 1)

(provide 'setup-helm)
