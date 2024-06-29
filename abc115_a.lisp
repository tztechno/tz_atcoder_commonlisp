abc115_a.lisp
##########################################
##########################################
##########################################
##########################################
##########################################
##########################################
(princ (case (read)
         (25 "Christmas")
         (24 "Christmas Eve")
         (23 "Christmas Eve Eve")
         (22 "Christmas Eve Eve Eve")))
(fresh-line)
##########################################
(let ((dd (read)))
  (cond ((= dd 25) (format t "Christmas~%"))
        ((= dd 24) (format t "Christmas Eve~%"))
        ((= dd 23) (format t "Christmas Eve Eve~%"))
        (t (format t "Christmas Eve Eve Eve~%"))))

##########################################
make-list：(- 25 d)個の"Eve"を含むリストを作成します。
applyとconcatenate：リスト内の"Eve"を連結し、最終的な文字列にします。

(defun solve (d)
  (let ((eves (make-list (- 25 d) :initial-element " Eve")))
    (concatenate 'string "Christmas" (apply #'concatenate 'string eves))))

(let ((d (parse-integer (read-line))))
  (princ (solve d))
  (terpri))
##########################################
[python]
D=int(input())
print("Christmas"+" Eve"*(25-D))
##########################################
