abc111_a.lisp
######################################
######################################
######################################
######################################
######################################
######################################
(defmacro char-case (my-condition my-lst)
  `(cond ,@(mapcar #'(lambda (x)
                       `((char= ,my-condition ,(car x)) ,(cadr x)))
                   my-lst)))
(princ
 (concatenate 'string
              (mapcar #'(lambda (x)
                          (char-case x
                                       ((#\1 #\9)
                                        (#\9 #\1)
                                        (t x))))
                      (concatenate 'list (read-line)))))
######################################
(let ((n1 (read-char))
      (n2 (read-char))
      (n3 (read-char)))
  (loop for c in (list n1 n2 n3) do
    (if (char= c #\1)
        (princ "9")
        (princ "1")))
  (terpri))

######################################
(defun solve (s)
  (let ((maps (make-hash-table :test 'equal))
        (s2 ""))
    (setf (gethash #\1 maps) #\9)
    (setf (gethash #\9 maps) #\1)
    (dolist (char (coerce s 'list))
      (setf s2 (concatenate 'string s2 (string (or (gethash char maps) char)))))
    s2))

(let ((s (read-line)))
  (princ (solve s))
  (terpri))
######################################
[python]
S=list(input())
maps={'1':'9','9':'1'}
S2=''
for s in S:
  S2+=maps.get(s,s)
print(S2)
######################################
