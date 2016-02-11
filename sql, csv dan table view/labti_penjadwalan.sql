CREATE TABLE IF NOT EXISTS jadwal_praktikum (
    id_jadwal_praktikum VARCHAR(36) NOT NULL,
    hari VARCHAR(10) NOT NULL UNIQUE,
    PRIMARY KEY (id_jadwal_praktikum)
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS ruang_praktikum (
    id_ruang_praktikum VARCHAR(36) NOT NULL,
    ruang VARCHAR(5) NOT NULL,
    id_jadwal_praktikum VARCHAR(36) NOT NULL,
    PRIMARY KEY (id_ruang_praktikum),
    FOREIGN KEY (id_jadwal_praktikum)
        REFERENCES jadwal_praktikum (id_jadwal_praktikum)
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS sesi_praktikum (
    id_sesi_praktikum VARCHAR(36) NOT NULL,
    sesi INT(1) NOT NULL,
    kelas VARCHAR(6),
    mata_praktikum VARCHAR(50),
    id_ruang_praktikum VARCHAR(36) NOT NULL,
    PRIMARY KEY (id_sesi_praktikum),
    FOREIGN KEY (id_ruang_praktikum)
        REFERENCES ruang_praktikum (id_ruang_praktikum)
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS jadwal_kuliah (
    id_jadwal_kuliah VARCHAR(36) NOT NULL,
    hari VARCHAR(10),
    PRIMARY KEY (id_jadwal_kuliah)
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS sesi_kuliah (
    id_sesi_kuliah VARCHAR(36) NOT NULL,
    kelas VARCHAR(6) NOT NULL,
    sesi INT(1),
    mata_kuliah VARCHAR(50),
    id_jadwal_kuliah VARCHAR(36) NOT NULL,
    PRIMARY KEY (id_sesi_kuliah),
    FOREIGN KEY (id_jadwal_kuliah)
        REFERENCES jadwal_kuliah (id_jadwal_kuliah)
)  ENGINE=INNODB;