CREATE VIEW `query_jadwal_praktikum` AS
    SELECT 
        `ruang_praktikum`.`ruang`,
        `jadwal_praktikum`.`hari`,
        `sesi_praktikum`.`kelas`,
        `sesi_praktikum`.`modul`,
        `sesi_praktikum`.`sesi`
    FROM
        `ruang_praktikum`
            INNER JOIN
        `jadwal_praktikum` ON `ruang_praktikum`.`id_jadwal_praktikum` = `jadwal_praktikum`.`id_jadwal_praktikum`
            INNER JOIN
        `sesi_praktikum` ON `ruang_praktikum`.`id_ruang_praktikum` = `sesi_praktikum`.`id_ruang_praktikum`
    WHERE
        `sesi_praktikum`.`kelas` IS NOT NULL
            AND `sesi_praktikum`.`modul` IS NOT NULL
