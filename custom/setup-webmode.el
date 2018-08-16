(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.ejs\\'" . web-mode))

(setq web-mode-engines-alist
      '(("erb"    . "\\.ejsl\\'")))

(provide 'setup-webmode)
