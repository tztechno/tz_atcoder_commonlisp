//practiceA.lisp
##################################
1
2 3
test
##################################
##################################
##################################
##################################
##################################
##################################
##################################
##################################
(format t "~A ~A~%" (+ (read) (read) (read)) (read-line))
##################################
;; https://atcoder.jp/contests/abs/tasks/practice_1
(format t "~a ~(~a~)" (+ (read) (read) (read)) (read))
##################################
(defun main()
        (let ((a (read))
              (b (read))
              (c (read))
              (s (read-line)))
    (format t "~A ~A~%" (+ a b c) s)))

(main)
##################################
;; 変数a, b, c, sを定義します。
(defvar a 0)
(defvar b 0)
(defvar c 0)
(defvar s "")

;; 入力を受け取ります。
(setf a (read))
(setf b (read))
(setf c (read))
(setf s (read-line))

;; a, b, cを足した値と文字列sを出力します。
(format t "~a ~a" (+ a b c) s)
##################################
