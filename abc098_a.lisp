//abc098_a.lisp
##########################################
##########################################
##########################################
##########################################
##########################################
##########################################
##########################################
(let ((a (read))
      (b (read)))
  (format t "~A~%" (max (+ a b) (- a b) (* a b))))
##########################################
(let ((a (read))
    (b (read))
    (ans 0))
    (setq ans (+ a b))
    (if (< ans (- a b))
        (setq ans (- a b))
    )
    (if (< ans (* a b))
        (setq ans (* a b))
    )
    (princ ans)
)
##########################################
(let ((a (read))
      (b (read)))
  (princ (max (+ a b)
              (- a b)
              (* a b))))

##########################################
(defun main()
  (let ((a (read))
        (b (read)))
    (let ((s (list (+ a b) (- a b) (* a b))))
      (format t "~A~%" (apply #'max s)))))
(main)
##########################################