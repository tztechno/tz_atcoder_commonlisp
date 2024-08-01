# tz_atcoder_commonlisp

Common Lisp (SBCL 2.0.3)

.lisp

### latest

---
```

```
---
```

```
---
```

```
---
```

```
---
```

```
---
```
(defun complement-base (base)
  (cond
    ((string= base "A") "T")
    ((string= base "T") "A")
    ((string= base "C") "G")
    ((string= base "G") "C")
    (t "Unknown")))

(princ (complement-base (read-line)))
(fresh-line)
```
---
```
abc115_a.lisp

(princ (case (read)
         (25 "Christmas")
         (24 "Christmas Eve")
         (23 "Christmas Eve Eve")
         (22 "Christmas Eve Eve Eve")))
(fresh-line)
```
---
```
if文
(if (or (= n 7) (= n 5) (= n 3))
(if (member xx `(7 5 3)) 
(if (find c "753") 
```
---

