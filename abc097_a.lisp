abc097_a.lisp
#########################################
#########################################
#########################################
#########################################
#########################################
#########################################
(let ((a (read))
      (b (read))
      (c (read))
      (d (read)))
     (princ (if (or (<= (abs (- a c)) d) (and (<= (abs (- a b)) d) (<= (abs (- b c)) d))) "Yes" "No")))
#########################################
(let ((a (read))
      (b (read))
      (c (read))
      (d (read)))

  (format t "~A~%"
          (if (or (<= (abs (- a c)) d)
                  (and (<= (abs (- a b)) d) (<= (abs (- b c)) d)))
            "Yes"
            "No")))
#########################################
(let ((aa (read))
      (bb (read))
      (cc (read))
      (dd (read)))
  (if (or (<= (abs (- cc aa)) dd) (and (<= (abs (- bb aa)) dd) (<= (abs (- cc bb)) dd)))
      (format t "Yes~%")
      (format t "No~%")))

#########################################
(defun main()
  (let ((a (read)) 
        (b (read)) 
        (c (read)) 
        (d (read)))
    (if (<= (abs (- c a)) d)
        (princ "Yes")
        (if (and (<= (abs (- a b)) d) 
                 (<= (abs (- b c)) d))
            (princ "Yes")
            (princ "No")))))
(main)
#########################################
