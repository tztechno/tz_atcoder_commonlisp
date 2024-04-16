##################################################
(let ((s (read-line)))
  (format t "~a~%" (concatenate `string s "pp")))
##################################################
(defun main ()
  (let ((input-string (read-line)))
    (format t "~a~%" (concatenate 'string input-string "pp"))))
(main)
##################################################
