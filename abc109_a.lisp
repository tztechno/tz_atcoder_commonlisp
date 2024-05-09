abc109_a.lisp
#############################################
#############################################
(let* ((a (read))
       (b (read)))

  (format t "~A~%" (if (zerop (mod (* a b) 2))
                     "No"
                     "Yes")))
#############################################
(let ((aa (read))
      (bb (read)))
  (if (and (oddp aa) (oddp bb))
      (format t "Yes~%")
      (format t "No~%")))
#############################################
(let ((a (read))
      (b (read)))
  (let ((c (* a b)))
    (if (= (mod c 2) 0)
        (princ "No")
        (princ "Yes"))))
#############################################
[python]
a,b=map(int,input().split())
if (a*b)%2==1:
    print('Yes')
else:
    print('No')
#############################################
