# Tredecuplex
Amalgam Lyra

---

### Download

    git clone https://github.com/reidiiius/tredecuplex.git

---

### Usage
command-line

    user@multivac2:~$ cd tredecuplex/
    user@multivac2:~/tredecuplex$ sqlite3
    SQLite version 3.31.1
    Connected to a transient in-memory database.
    sqlite> .read forge_gamut.sql
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
    sqlite> select signa from gamut where scale like '%yy%';
    'n0pzyy'
    'n0yy'
    'n0zpyy'
    sqlite> .quit
    user@multivac2:~/tredecuplex$

---

### Distribution
MIT License

