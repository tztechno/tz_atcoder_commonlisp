//abc093_a.lisp
####################################
####################################
####################################
####################################
####################################
####################################
(let ((s (concatenate 'string (sort (concatenate 'list (read-line))
                                    #'char-lessp))))
  (format t "~A~%"
          (if (string= s "abc")
            "Yes"
            "No")))

####################################
(princ (if (/= (char-code (read-char)) (char-code (read-char)) (char-code (read-char))) "Yes" "No"))
####################################
(let ((ss (read-line)))
  (if (and (find #\a ss) (find #\b ss) (find #\c ss))
      (format t "Yes~%")
      (format t "No~%")))
####################################
(princ
  (let ((s (read-line)))
    (if (and (search "a" s)
             (search "b" s)  
             (search "c" s))
        "Yes"
        "No")))
####################################
