abc070_b.lisp
##############################
##############################
##############################
##############################
##############################
(format t "~a"
    (let ((posa (read)) (posb (read)) (posc (read)) (posd (read)))
         (max 0 
              (- (abs (- (max posb posd) (min posa posc))) 
                 (+ (abs (- posc posa)) (abs (- posd posb)))))))
##############################
(let((a(read)))(princ(max(-(min(read)(+(*(setq c(read))0)(read)))(max a c))0)))
##############################
(defun main ()
  (let ((a (read))
	(b (read))
	(c (read))
	(d (read)))
    (format t "~a~%" (max 0 (- (min b d) (max a c))))))

(main)
##############################
(defun main ()
  (let ((a (read)) (b (read)) (c (read)) (d (read)))
    (let ((result (max (- (min b d) (max a c)) 0)))
      (princ result))))
(main)
##############################
