abc104_a.lisp
#######################################
#######################################
#######################################
#######################################
#######################################
#######################################
(let ((rr (read)))
  (cond ((< rr 1200) (format t "ABC~%"))
        ((< rr 2800) (format t "ARC~%"))
        (t (format t "AGC~%"))))

#######################################
(let ((r (read)))
  (format t "~A~%"
          (if (< r 1200)
              "ABC"
              (if (< r 2800)
                  "ARC"
                  "AGC"))))
#######################################
