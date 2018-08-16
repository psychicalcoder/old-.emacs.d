(require 'yasnippet)
(yas-global-mode)

(add-hook 'find-file-hook
          '(lambda ()
             (when (and (buffer-file-name)
                        (not (file-exists-p (buffer-file-name)))
                        (= (point-max) 1))
               (let ((header-snippet "GPL")
                     (yas/fallback-behavior 'return-nil))
                 (insert header-snippet)
                 ;; if can't expand snippet, delete instert string
                 (if (not (yas/expand))
                     (delete-region (point-min) (point-max)))))))

(provide 'setup-yasnippet)
