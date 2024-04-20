abc023_a.lisp

############################
############################
(let ((x (read))) (format t "~A~%" (+ (floor x 10) (mod x 10))))
############################
(let ((x (read)))
       (multiple-value-bind (a b) (floor x 10) (format t "~A~%" (+ a b))))
############################
(let* ((x (read))
       (onesPlace (mod x 10))
       (tensPlace (floor (/ x 10)))
       (ans (+ onesPlace tensPlace)))
  (format t "~a~%" ans))

############################
############################
[AC,出力に改行が必要]

(let ((a (read)))
  (format t "~A~%" (+ (truncate a 10) (mod a 10))))
############################
[error]

(let ((a (read)))
  (princ (+ (truncate a 10) (mod a 10))))
############################
