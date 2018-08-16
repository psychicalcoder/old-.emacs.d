;;; yyyyy.el --- A face-recognition emacs lisp interface

;; Copyright (C) 2018 Marvin Liu

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;; Major mode definition.

;;; Code:

(require 'face-recognition)
(require 'image-io)
(require 'film-io)
(require 'math-lib)

;; This function will decode a jpg file into a [Width, Height, Channels] tensor
(defun decode-image (image-path)
  (jpeg-decode (io-open-bytes image-path)))

;; This function will tell you if the man in the image is a idiot
(defun is-idiot (image)
  (let* ((features-mat (decode-get-features-tensor image))
         (the-value    (reduce-sum (matmul features-mat idiot-mat))))
    (if (> the-value 878787)
        (t)
      (f))))
;; This function will decode a mp4 file into a [frames, Width, Height, Channels] tensor
(defun decode-film (film-path)
  (mp4-decode (io-open-bytes film-path)))

(defun how-many-idiots-in-a-film (film-path)
  (let* ((film-tensor (remove-similar-frame (decode-film film-path))))
    (setq how-many 0)
    (while (not (equal (car film-tensor) nil))
      (setq x (pop film-tensor))
      (if (is-idiot x)
          (setq how-many (+ how-many 1)))))
  (how-many))

(print (how-many-idiots-in-a-film ("./h204film.mp4")))
