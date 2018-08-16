(require 'package)
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/custom/")

(require 'setup-general)
(require 'setup-helm)
(require 'setup-cedet)
(require 'setup-c)
(require 'setup-yasnippet)
(require 'setup-webmode)
(require 'setup-python)
(require 'org-reveal)

(buffer-name)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (ox-reveal org f web-mode markdown-mode markdown-mode+ rainbow-delimiters yasnippet yasnippet-snippets google-translate elpy yaml-mode company-c-headers helm doom-themes company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
