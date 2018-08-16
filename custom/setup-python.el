(require 'elpy)
(elpy-enable)

(defun ml_env ()
  "Enable ML env"
  (interactive)
  (pyvenv-activate "~/ml/env/"))


(provide 'setup-python)
