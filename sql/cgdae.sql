-- cgdae.sql

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
        printf("%s-cgdae-i%u-h%s", (
          SELECT signa FROM pegbox),
            strftime("%s", 'now', 'utc'),
            hex(randomblob(4))
        )
      )
    )
  END;

-- En
SELECT
  printf("%s%s",
    substr(scale, (SELECT En FROM pegbox)),
    substr(scale, 0, (SELECT En FROM pegbox))
  ) FROM gamut WHERE signa = (SELECT signa FROM pegbox);

-- An
SELECT
  printf("%s%s",
    substr(scale, (SELECT An FROM pegbox)),
    substr(scale, 0, (SELECT An FROM pegbox))
  ) FROM gamut WHERE signa = (SELECT signa FROM pegbox);

-- Dn
SELECT
  printf("%s%s",
    substr(scale, (SELECT Dn FROM pegbox)),
    substr(scale, 0, (SELECT Dn FROM pegbox))
  ) FROM gamut WHERE signa = (SELECT signa FROM pegbox);

-- Gn
SELECT
  printf("%s%s",
    substr(scale, (SELECT Gn FROM pegbox)),
    substr(scale, 0, (SELECT Gn FROM pegbox))
  ) FROM gamut WHERE signa = (SELECT signa FROM pegbox);

-- Cn
SELECT
  printf("%s", scale)
  FROM gamut WHERE signa = (SELECT signa FROM pegbox);

