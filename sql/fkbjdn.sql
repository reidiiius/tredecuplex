-- fkbjdn.sql

SELECT
  CASE TRUE
    WHEN (
      SELECT signa FROM pegbox
    ) IS ''
    THEN (
      SELECT 'signa attribute of pegbox is empty'
    )
    WHEN (
      SELECT signa FROM pegbox
    ) NOT IN (
      SELECT signa FROM gamut
    )
    THEN (
      printf("%s ?", (
        SELECT signa FROM pegbox)
      )
    )
    ELSE (
      UPPER(
        printf("%s-fkbjdn-i%u-h%s", (
          SELECT signa FROM pegbox),
            strftime("%s", 'now', 'utc'),
            hex(randomblob(3))
        )
      )
    )
  END;

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

