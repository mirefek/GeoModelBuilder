(sample (A B C) triangle)
(param D (onLine (perpBis B C)))
(param E (onLine (perpBis C A)))
(param F (onLine (perpBis A B)))
(confirm (concur (perpAt A E F) (perpAt B F D) (perpAt C D E)))