(param (A B C) triangle)
(param P point (in-poly A B C))
(compute Gamma circle (circumcircle A B C))

(compute K point (inter-lc (line A P) Gamma (rs-neq A)))
(compute L point (inter-lc (line B P) Gamma (rs-neq B)))
(compute M point (inter-lc (line C P) Gamma (rs-neq C)))

(compute S point (inter-ll (perp-at C (line C (origin Gamma))) (line A B)))
(assert (cong S C S P))
(eval (cong M K M L))
