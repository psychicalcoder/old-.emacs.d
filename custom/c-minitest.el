(require 'f)
(require 'json)

(defun current-path ()
  (f-dirname buffer-file-name))

(defun readjson ()
  (f-read-text (f-join (current-path) "cminitest.json")))

(defun c-minitest-createjson ()
  (interactive)
  (if (f-exists? (f-join (current-path) "cminitest.json"))
      (message "cminitest.json exists!")
    (progn
      (f-touch (f-join (current-path) "cminitest.json"))
      (f-write-text (concat "{
    \"compile-command\" : \"g++ " (buffer-name)  " -std=c++14 -O2 -o " (buffer-name) ".out\",
    \"exec-file\" : \"" (buffer-name) ".out\"
}") 'utf-8 (f-join (current-path) "cminitest.json"))
                            )))

(defun c-minitest-compile ()
  (interactive)
  (compile (cdr (assoc 'compile-command (json-read-from-string (readjson))))))

(defun c-minitest-run ()
  (interactive)
  (comint-run (f-join (current-path) (cdr (assoc 'exec-file (json-read-from-string (readjson))))))
  )


  
(provide 'c-minitest)
