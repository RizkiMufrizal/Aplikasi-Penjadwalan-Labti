-- jadwal praktikum

set @uuid_jadwal_praktikum1 = uuid();
set @uuid_jadwal_praktikum2 = uuid();
set @uuid_jadwal_praktikum3 = uuid();
set @uuid_jadwal_praktikum4 = uuid();
set @uuid_jadwal_praktikum5 = uuid();
set @uuid_jadwal_praktikum6 = uuid();

INSERT INTO `labti_penjadwalan`.`jadwal_praktikum`
(`id_jadwal_praktikum`,`hari`)
VALUES
(@uuid_jadwal_praktikum1, 'senin'),
(@uuid_jadwal_praktikum2, 'selasa'),
(@uuid_jadwal_praktikum3, 'rabu'),
(@uuid_jadwal_praktikum4, 'kamis'),
(@uuid_jadwal_praktikum5, 'jumat'),
(@uuid_jadwal_praktikum6, 'sabtu');

-- jadwal ruang praktikum

set @uuid_jadwal_ruang_praktikum1 = uuid();
set @uuid_jadwal_ruang_praktikum2 = uuid();
set @uuid_jadwal_ruang_praktikum3 = uuid();
set @uuid_jadwal_ruang_praktikum4 = uuid();
set @uuid_jadwal_ruang_praktikum5 = uuid();
set @uuid_jadwal_ruang_praktikum6 = uuid();
set @uuid_jadwal_ruang_praktikum7 = uuid();
set @uuid_jadwal_ruang_praktikum8 = uuid();
set @uuid_jadwal_ruang_praktikum9 = uuid();
set @uuid_jadwal_ruang_praktikum10 = uuid();
set @uuid_jadwal_ruang_praktikum11 = uuid();
set @uuid_jadwal_ruang_praktikum12 = uuid();

INSERT INTO `labti_penjadwalan`.`ruang_praktikum`
(`id_ruang_praktikum`, `ruang`,`id_jadwal_praktikum`)
VALUES
(@uuid_jadwal_ruang_praktikum1,'E1',@uuid_jadwal_praktikum1),
(@uuid_jadwal_ruang_praktikum2,'E2',@uuid_jadwal_praktikum1),
(@uuid_jadwal_ruang_praktikum3,'E1',@uuid_jadwal_praktikum2),
(@uuid_jadwal_ruang_praktikum4,'E2',@uuid_jadwal_praktikum2),
(@uuid_jadwal_ruang_praktikum5,'E1',@uuid_jadwal_praktikum3),
(@uuid_jadwal_ruang_praktikum6,'E2',@uuid_jadwal_praktikum3),
(@uuid_jadwal_ruang_praktikum7,'E1',@uuid_jadwal_praktikum4),
(@uuid_jadwal_ruang_praktikum8,'E2',@uuid_jadwal_praktikum4),
(@uuid_jadwal_ruang_praktikum9,'E1',@uuid_jadwal_praktikum5),
(@uuid_jadwal_ruang_praktikum10,'E2',@uuid_jadwal_praktikum5),
(@uuid_jadwal_ruang_praktikum11,'E1',@uuid_jadwal_praktikum6),
(@uuid_jadwal_ruang_praktikum12,'E2',@uuid_jadwal_praktikum6);