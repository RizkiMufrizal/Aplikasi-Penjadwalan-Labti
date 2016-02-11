CREATE VIEW `cari_ruang_sesi_praktikum_kosong` AS
    SELECT 
        `jadwal_praktikum`.`hari`,
        `ruang_praktikum`.`ruang`,
        `sesi_praktikum`.`mata_praktikum`,
        `sesi_praktikum`.`kelas`,
        `sesi_praktikum`.`sesi`,
        `sesi_praktikum`.`id_sesi_praktikum`
    FROM
        `jadwal_praktikum`
            INNER JOIN
        `ruang_praktikum` ON `jadwal_praktikum`.`id_jadwal_praktikum` = `ruang_praktikum`.`id_jadwal_praktikum`
            INNER JOIN
        `sesi_praktikum` ON `ruang_praktikum`.`id_ruang_praktikum` = `sesi_praktikum`.`id_ruang_praktikum`
    WHERE
        sesi_praktikum.kelas IS NULL