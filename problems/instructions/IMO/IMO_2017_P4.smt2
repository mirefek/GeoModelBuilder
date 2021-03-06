(param Omega circle)
(param R point (on-circ Omega))
(param S point (on-circ Omega))
(assert (not (coll R S (origin Omega))))

(compute l line (perp-at R (line (origin Omega) R)))
(compute T point (midp-from S R))

(param J point (on-minor-arc Omega R S))
(compute Gamma circle (circumcircle J S T))

(compute A point (inter-lc l Gamma (rs-closer-to-p R)))
(assert (not (eq A (inter-lc l Gamma (rs-neq A)))))

(compute K point (inter-lc (line A J) Omega (rs-neq J)))

(eval (tangent-lc (line K T) Gamma))