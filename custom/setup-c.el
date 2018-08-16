(require 'cc-mode)

(require 'company)
(require 'company-c-headers)

(require 'c-minitest)

(add-to-list 'company-c-headers-path-system "/usr/include/c++/5.4.0/")
(add-to-list 'company-backends 'company-c-headers)
(setq company-idle-delay t)
(setq company-backends '(company-c-headers
                         company-semantic
                         company-capf
                         company-files
                         company-dabbrev-code
                         company-dabbrev
                         company-yasnippet
                         company-keywords))

(defun c-setup ()
  (setq tab-width 4
        indent-tabs-mode -1)
  (local-set-key (kbd "<RET>") 'newline-and-indent)
  (local-set-key (kbd "<tab>") 'indent-line)
  (local-set-key (kbd "C-D") 'comment-region)
  (local-set-key (kbd "C-c C-c") 'c-minitest-compile)
  (local-set-key (kbd "C-c C-e") 'c-minitest-run))

(add-hook 'c-mode-common-hook 'c-setup)

(provide 'setup-c)
