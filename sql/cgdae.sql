-- cgdae.sql

SELECT
  printf("%s-cgdae-i%s",(
    SELECT signa FROM pegbox), strftime("%s")
  );

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

