abc114_a.lisp
##########################################
if文
(if (or (= n 7) (= n 5) (= n 3))
(if (member xx `(7 5 3)) 
(if (find c "753") 
##########################################
##########################################
##########################################
##########################################
##########################################
 (defun main ()
  (let ((c (read-char)))
    (princ (if (find c "753")
               "YES"
               "NO"))
    (terpri)))
(main)
##########################################
 (let ((xx (read)))
  (if (member xx `(7 5 3))
      (format t "YES~%")
      (format t "NO~%")))

##########################################
(let* ((n (read)))
  (if (or (= n 7) (= n 5) (= n 3))
      (princ "YES")
      (princ "NO")))
##########################################
[python]
X=int(input())
if (X-7)*(X-5)*(X-3)==0:
  print('YES')
else:
  print('NO')
##########################################