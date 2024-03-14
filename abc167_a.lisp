//abc167_a.lisp
################################
################################
(setf s (read-line))
(if (equal s (subseq (read-line) 0 (length s)))
    (princ "Yes")
    (princ "No"))
################################
(princ 
  (let ( (s (read-line)) (u (read-line)) )
    (if (equal s (subseq u 0 (- (length u) 1) ) ) 
      "Yes"
      "No")))

################################
(defun main (str1 str2)
  (princ
   (if (string= str1 (subseq str2 0 (length str1)))
       "Yes"
       "No")))

(main (read-line) (read-line))

################################
(let ((s (read-line))
      (u (read-line)))
  (format t "~A~%"
          (if (equal (subseq u 0 (1- (length u)))
                     s)
                "Yes"
                "No")))

################################
;;(declaim (optimize (speed 0) (safety 3) (debug 3)))
(declaim (optimize (speed 3) (safety 0) (debug 0)))

(defvar s-str (read-line))
(defvar t-str (read-line))

(defvar s-len (length s-str))

(format t "~:[No~;Yes~]" (string= s-str t-str :start1 0 :end1 s-len
				  :start2 0 :end2 s-len))

################################
(in-package :cl-user)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (defvar *opt*
    #+swank '(optimize (speed 3) (safety 2))
    #-swank '(optimize (speed 3) (safety 0) (debug 0)))
  #+swank (load "~/Dropbox/Code/atcoder/ac-tools/act.lisp")
  #+swank (ql:quickload :prove)
  #-swank (declaim (sb-ext:muffle-conditions sb-ext:compiler-note))
  #-swank (sb-ext:disable-debugger)
  (pushnew :inline-generic-funcion *features*))

(defmacro dbg (&rest forms)
  #-swank (declare (ignore forms))
  #+swank `(format *error-output* "~a => ~a~&" ',forms `(,,@forms)))

(defmacro do-rep (count &body body) `(loop repeat ,count do ,@body))

(defmacro nlet (name binds &body body)
  `(labels ((,name (,@(mapcar #'first binds))
              ,@body))
     (,name ,@(mapcar #'second binds))))

(defmacro dotimes! ((var count &optional (index-origin 0) (unroll 60)) &body body)
  (macrolet ((with-gensyms ((&rest args) &body body)
               `(let (,@(mapcar (lambda (arg) `(,arg (gensym))) args))
                  ,@body)))
    (with-gensyms (cnt q r)
      `(multiple-value-bind (,q ,r) (truncate ,count ,unroll)
         (declare (fixnum ,q ,r))
         (do ((,cnt 0 (the fixnum (1+ ,cnt))) (,var ,index-origin))
             ((>= ,cnt ,q) (loop repeat ,r do (progn ,@body (setf (the fixnum ,var) (the fixnum (1+ ,var))))))
           (declare (fixnum ,cnt ,var))
           ,@(loop repeat unroll append `(,@body (setf (the fixnum ,var) (the fixnum (1+ ,var))))))))))

(declaim (inline println))
(defun println (obj &optional (stream *standard-output*))
  (let ((*read-default-float-format* 'double-float))
    (prog1 obj
      (princ obj stream)
      (terpri))))

(defun read-nums (count &optional (element-type '(simple-array fixnum (*))))
  (declare (fixnum count))
  (coerce (loop repeat count collect (read)) element-type))

(define-modify-macro maxf (var) max)
(define-modify-macro minf (var) min)

(defconstant +inf+ #.(expt 10 14))

;;;
;;; Body
;;;

(defun main ()
  (declare #.*opt*)
  (let ((str1 (read-line))
        (str2 (read-line)))
    (println (if (string= str1 str2
                          :end2 (length str1))
                 "Yes"
                 "No"))))

#-swank
(progn
  (setf (sb-alien:extern-alien "thread_control_stack_size" sb-kernel::os-vm-size-t)
        (* 256 1024 1024))
  (sb-thread:join-thread (sb-thread:make-thread #'main)))

################################
