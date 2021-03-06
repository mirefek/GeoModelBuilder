;; Note that the following causes a NaN
;; (param (A B C) (iso-tri A))

(param (A B C) triangle)
(assert (cong A B A C))

(compute D point (inter-ll (i-bisector C A B) (line B C)))
(compute E point (inter-ll (i-bisector A B C) (line C A)))

(compute K point (incenter A D C))
(assert (= (uangle B E K) (div pi 4)))