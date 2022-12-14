-- matrix.sql

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
        printf("%s-mx13-i%u-h%s", (
          SELECT signa FROM pegbox),
            strftime("%s", 'now', 'utc'),
            hex(randomblob(6))
        )
      )
    )
  END;

-- Aj
SELECT
  printf("%s%s",
    substr(scale, (SELECT Aj FROM pegbox)),
    substr(scale, 0, (SELECT Aj FROM pegbox)+2)
  ) FROM gamut WHERE signa = (SELECT signa FROM pegbox);

-- Ej
SELECT
  printf("%s%s",
    substr(scale, (SELECT Ej FROM pegbox)),
    substr(scale, 0, (SELECT Ej FROM pegbox)+2)
  ) FROM gamut WHERE signa = (SELECT signa FROM pegbox);

-- Bj
SELECT
  printf("%s%s",
    substr(scale, (SELECT Bj FROM pegbox)),
    substr(scale, 0, (SELECT Bj FROM pegbox)+2)
  ) FROM gamut WHERE signa = (SELECT signa FROM pegbox);

-- Fn
SELECT
  printf("%s%s",
    substr(scale, (SELECT Fn FROM pegbox)),
    substr(scale, 0, (SELECT Fn FROM pegbox)+2)
  ) FROM gamut WHERE signa = (SELECT signa FROM pegbox);

-- Cn
SELECT
  printf("%s%s",
    substr(scale, (SELECT Cn FROM pegbox)),
    substr(scale, 0, (SELECT Cn FROM pegbox)+2)
  ) FROM gamut WHERE signa = (SELECT signa FROM pegbox);

-- Gn
SELECT
  printf("%s%s",
    substr(scale, (SELECT Gn FROM pegbox)),
    substr(scale, 0, (SELECT Gn FROM pegbox)+2)
  ) FROM gamut WHERE signa = (SELECT signa FROM pegbox);

-- Dn
SELECT
  printf("%s%s",
    substr(scale, (SELECT Dn FROM pegbox)),
    substr(scale, 0, (SELECT Dn FROM pegbox)+2)
  ) FROM gamut WHERE signa = (SELECT signa FROM pegbox);

-- An
SELECT
  printf("%s%s",
    substr(scale, (SELECT An FROM pegbox)),
    substr(scale, 0, (SELECT An FROM pegbox)+2)
  ) FROM gamut WHERE signa = (SELECT signa FROM pegbox);

-- En
SELECT
  printf("%s%s",
    substr(scale, (SELECT En FROM pegbox)),
    substr(scale, 0, (SELECT En FROM pegbox)+2)
  ) FROM gamut WHERE signa = (SELECT signa FROM pegbox);

-- Bn
SELECT
  printf("%s%s",
    substr(scale, (SELECT Bn FROM pegbox)),
    substr(scale, 0, (SELECT Bn FROM pegbox)+2)
  ) FROM gamut WHERE signa = (SELECT signa FROM pegbox);

-- Fk
SELECT
  printf("%s%s",
    substr(scale, (SELECT Fk FROM pegbox)),
    substr(scale, 0, (SELECT Fk FROM pegbox)+2)
  ) FROM gamut WHERE signa = (SELECT signa FROM pegbox);

-- Ck
SELECT
  printf("%s%s",
    substr(scale, (SELECT Ck FROM pegbox)),
    substr(scale, 0, (SELECT Ck FROM pegbox)+2)
  ) FROM gamut WHERE signa = (SELECT signa FROM pegbox);

-- Aj
SELECT
  printf("%s%s",
    substr(scale, (SELECT Aj FROM pegbox)),
    substr(scale, 0, (SELECT Aj FROM pegbox)+2)
  ) FROM gamut WHERE signa = (SELECT signa FROM pegbox);

