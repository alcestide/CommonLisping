(defun insert (thing into)
  (cond ((null into)
         (list thing))
        ((< (car thing) (car (first into)))
         (cons thing into))
        (t (cons (first into)
                 (insert thing (rest into))))))
