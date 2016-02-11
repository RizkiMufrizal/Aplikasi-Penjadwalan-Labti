CREATE VIEW `cari_kelas_kosong` AS
    SELECT 
        jadwal_kuliah.hari, sesi_kuliah.kelas, sesi_kuliah.sesi
    FROM
        jadwal_kuliah
            INNER JOIN
        sesi_kuliah ON jadwal_kuliah.id_jadwal_kuliah = sesi_kuliah.id_jadwal_kuliah
    WHERE
        sesi_kuliah.kelas
            AND sesi_kuliah.mata_kuliah IS NULL