(declare-points A B C D E F H Obef)

(assert (triangle A B C))

;; D, E, F are the feet of the altitudes from A, B, and C
(assert (foot D A B C))
(assert (foot E B A C))
(assert (foot F C A B))

;; H is the orthocenter
(assert (orthocenter H A B C))

;; Prove that points B, E, F, C lie on a circle with diameter BC
(prove (cycl B E F C))

(assert (circumcenter Obef B E F))
(prove (coll Obef B C))