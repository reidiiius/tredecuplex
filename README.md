# TredecupleX
Amalgam Lyra

---

### Download

    git clone https://github.com/reidiiius/tredecuplex.git

---

### Usage
command-line

    user@multivac2:~$ cd tredecuplex/
    user@multivac2:~/tredecuplex$ sqlite3 -init sql/gamut.sql
    -- Loading resources from sql/gamut.sql
    SQLite version 3.31.1 2020-01-27 19:55:54
    Enter ".help" for usage hints.
    sqlite> .tables
    gamut
    sqlite> .schema gamut
    CREATE TABLE gamut(signa VARCHAR(10), scale VARCHAR(40));
    sqlite> .mode quote
    sqlite> select scale from gamut where signa == 'n0yy';
    'vr __ tt __ rv wq __ us yy su __ qw '
    sqlite> select * from gamut where signa like '_26';
    'j26','vv zq __ __ ry wu __ uw yr __ __ qz '
    'k26','vp __ __ pv rq wo __ uy __ __ ow qr '
    sqlite> select signa from gamut where scale like '%tt%';
    'n0pz'
    'n0pzyy'
    'n0'
    'n0yy'
    'n0zp'
    'n0zpyy'
    sqlite> .read sql/pegbox.sql
    sqlite> .tables
    gamut   pegbox
    sqlite> .schema pegbox
    CREATE TABLE pegbox(signa VARCHAR(10),
      Cn INT, Ck INT, Dn INT, Ej INT, En INT, Fn INT,
      Fk INT, Gn INT, Aj INT, An INT, Bj INT, Bn INT);
    sqlite> .read sql/beadgcf.sql
    'N0-BEADGCF-I1663463436-H1A160F'
    'wq __ us __ su __ qw vr __ tt __ rv '
    'vr __ tt __ rv wq __ us __ su __ qw '
    'us __ su __ qw vr __ tt __ rv wq __ '
    'tt __ rv wq __ us __ su __ qw vr __ '
    'su __ qw vr __ tt __ rv wq __ us __ '
    'rv wq __ us __ su __ qw vr __ tt __ '
    'qw vr __ tt __ rv wq __ us __ su __ '
    sqlite> update pegbox set signa='j3';
    sqlite> .read sql/beadgcf.sql
    'J3-BEADGCF-I1663463485-HF6A630'
    'ws __ uu __ sw __ qx vt __ tv xq __ '
    'vt __ tv xq __ ws __ uu __ sw __ qx '
    'uu __ sw __ qx vt __ tv xq __ ws __ '
    'tv xq __ ws __ uu __ sw __ qx vt __ '
    'sw __ qx vt __ tv xq __ ws __ uu __ '
    '__ ws __ uu __ sw __ qx vt __ tv xq '
    'qx vt __ tv xq __ ws __ uu __ sw __ '
    sqlite> .read sql/cgdae.sql
    'J3-CGDAE-I1663463519-H3E86D2C3'
    '__ ws __ uu __ sw __ qx vt __ tv xq '
    'sw __ qx vt __ tv xq __ ws __ uu __ '
    'tv xq __ ws __ uu __ sw __ qx vt __ '
    'uu __ sw __ qx vt __ tv xq __ ws __ '
    'vt __ tv xq __ ws __ uu __ sw __ qx '
    sqlite> .quit
    user@multivac2:~/tredecuplex$

---

### Distribution
MIT License

