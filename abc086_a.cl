//abc086_a.cl
################################
################################
################################
(defun solve (a b)
  (if (=(mod (* a b) 2) 0) "Even" "Odd")
)
(format t "~A~%" (solve (read) (read)))
################################
(let* (
       (a (read))(b (read))
       )
  (if (zerop (mod (* a b) 2))
      (princ "Even")
      (princ "Odd"))
  )
################################
(let* ((ns (mapcar #'parse-integer (uiop:split-string (read-line))))
       (a (first ns))
       (b (second ns)))
  (format t "~A~%" (if (evenp (* a b)) "Even" "Odd")))
################################
(defun main ()
  (let* ((a (read))
         (b (read)))
    (format t "~A~%" 
      (if (= (mod (* a b) 2) 0) "Even" "Odd"))))
(main)
################################
