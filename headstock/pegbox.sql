-- pegbox.sql

DROP TABLE IF EXISTS pegbox;
CREATE TABLE pegbox(signa VARCHAR(10),
  Cn INT, Ck INT, Dn INT, Ej INT, En INT, Fn INT,
  Fk INT, Gn INT, Aj INT, An INT, Bj INT, Bn INT);

BEGIN TRANSACTION;
INSERT INTO pegbox VALUES('n0',
  0, 4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34);
COMMIT;

