CREATE VIEW `query_jadwal_kuliah` AS
    SELECT 
        `jadwal_kuliah`.`hari`,
        `sesi_kuliah`.`kelas`,
        `sesi_kuliah`.`sesi`,
        `sesi_kuliah`.`mata_kuliah`,
        `sesi_kuliah`.`id_sesi_kuliah`
    FROM
        `jadwal_kuliah`
            INNER JOIN
        `sesi_kuliah` ON `jadwal_kuliah`.`id_jadwal_kuliah` = `sesi_kuliah`.`id_jadwal_kuliah`
    WHERE
        `sesi_kuliah`.`mata_kuliah` IS NOT NULL