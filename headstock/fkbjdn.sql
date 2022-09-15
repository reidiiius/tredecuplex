-- fkbjdn.sql

SELECT
  printf("%s-fkbjdn-i%s",(
    SELECT signa FROM pegbox), strftime("%s")
  );

-- Dn
SELECT
  printf("%s%s",
    substr(scale, (SELECT Dn FROM pegbox)),
    substr(scale, 0, (SELECT Dn FROM pegbox))
  ) FROM gamut WHERE signa = (SELECT signa FROM pegbox);

-- Bj
SELECT
  printf("%s%s",
    substr(scale, (SELECT Bj FROM pegbox)),
    substr(scale, 0, (SELECT Bj FROM pegbox))
  ) FROM gamut WHERE signa = (SELECT signa FROM pegbox);

-- Fk
SELECT
  printf("%s%s",
    substr(scale, (SELECT Fk FROM pegbox)),
    substr(scale, 0, (SELECT Fk FROM pegbox))
  ) FROM gamut WHERE signa = (SELECT signa FROM pegbox);

-- Dn
SELECT
  printf("%s%s",
    substr(scale, (SELECT Dn FROM pegbox)),
    substr(scale, 0, (SELECT Dn FROM pegbox))
  ) FROM gamut WHERE signa = (SELECT signa FROM pegbox);

-- Bj
SELECT
  printf("%s%s",
    substr(scale, (SELECT Bj FROM pegbox)),
    substr(scale, 0, (SELECT Bj FROM pegbox))
  ) FROM gamut WHERE signa = (SELECT signa FROM pegbox);

-- Fk
SELECT
  printf("%s%s",
    substr(scale, (SELECT Fk FROM pegbox)),
    substr(scale, 0, (SELECT Fk FROM pegbox))
  ) FROM gamut WHERE signa = (SELECT signa FROM pegbox);

