-- jadwal praktikum

set @uuid_jadwal_praktikum1 = uuid();
set @uuid_jadwal_praktikum2 = uuid();
set @uuid_jadwal_praktikum3 = uuid();
set @uuid_jadwal_praktikum4 = uuid();
set @uuid_jadwal_praktikum5 = uuid();
set @uuid_jadwal_praktikum6 = uuid();

INSERT INTO `penjadwalan`.`jadwal_praktikum`
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
set @uuid_jadwal_ruang_praktikum13 = uuid();
set @uuid_jadwal_ruang_praktikum14 = uuid();
set @uuid_jadwal_ruang_praktikum15 = uuid();
set @uuid_jadwal_ruang_praktikum16 = uuid();
set @uuid_jadwal_ruang_praktikum17 = uuid();
set @uuid_jadwal_ruang_praktikum18 = uuid();
set @uuid_jadwal_ruang_praktikum19 = uuid();
set @uuid_jadwal_ruang_praktikum20 = uuid();
set @uuid_jadwal_ruang_praktikum21 = uuid();
set @uuid_jadwal_ruang_praktikum22 = uuid();
set @uuid_jadwal_ruang_praktikum23 = uuid();
set @uuid_jadwal_ruang_praktikum24 = uuid();
set @uuid_jadwal_ruang_praktikum25 = uuid();
set @uuid_jadwal_ruang_praktikum26 = uuid();
set @uuid_jadwal_ruang_praktikum27 = uuid();
set @uuid_jadwal_ruang_praktikum28 = uuid();
set @uuid_jadwal_ruang_praktikum29 = uuid();
set @uuid_jadwal_ruang_praktikum30 = uuid();

INSERT INTO `penjadwalan`.`ruang_praktikum`
(`id_ruang_praktikum`, `ruang`,`id_jadwal_praktikum`)
VALUES
(@uuid_jadwal_ruang_praktikum1,'E1',@uuid_jadwal_praktikum1),
(@uuid_jadwal_ruang_praktikum2,'E2',@uuid_jadwal_praktikum1),
(@uuid_jadwal_ruang_praktikum3,'E3',@uuid_jadwal_praktikum1),
(@uuid_jadwal_ruang_praktikum4,'E4',@uuid_jadwal_praktikum1),
(@uuid_jadwal_ruang_praktikum5,'E5',@uuid_jadwal_praktikum1),
(@uuid_jadwal_ruang_praktikum6,'E1',@uuid_jadwal_praktikum2),
(@uuid_jadwal_ruang_praktikum7,'E2',@uuid_jadwal_praktikum2),
(@uuid_jadwal_ruang_praktikum8,'E3',@uuid_jadwal_praktikum2),
(@uuid_jadwal_ruang_praktikum9,'E4',@uuid_jadwal_praktikum2),
(@uuid_jadwal_ruang_praktikum10,'E5',@uuid_jadwal_praktikum2),
(@uuid_jadwal_ruang_praktikum11,'E1',@uuid_jadwal_praktikum3),
(@uuid_jadwal_ruang_praktikum12,'E2',@uuid_jadwal_praktikum3),
(@uuid_jadwal_ruang_praktikum13,'E3',@uuid_jadwal_praktikum3),
(@uuid_jadwal_ruang_praktikum14,'E4',@uuid_jadwal_praktikum3),
(@uuid_jadwal_ruang_praktikum15,'E5',@uuid_jadwal_praktikum3),
(@uuid_jadwal_ruang_praktikum16,'E1',@uuid_jadwal_praktikum4),
(@uuid_jadwal_ruang_praktikum17,'E2',@uuid_jadwal_praktikum4),
(@uuid_jadwal_ruang_praktikum18,'E3',@uuid_jadwal_praktikum4),
(@uuid_jadwal_ruang_praktikum19,'E4',@uuid_jadwal_praktikum4),
(@uuid_jadwal_ruang_praktikum20,'E5',@uuid_jadwal_praktikum4),
(@uuid_jadwal_ruang_praktikum21,'E1',@uuid_jadwal_praktikum5),
(@uuid_jadwal_ruang_praktikum22,'E2',@uuid_jadwal_praktikum5),
(@uuid_jadwal_ruang_praktikum23,'E3',@uuid_jadwal_praktikum5),
(@uuid_jadwal_ruang_praktikum24,'E4',@uuid_jadwal_praktikum5),
(@uuid_jadwal_ruang_praktikum25,'E5',@uuid_jadwal_praktikum5),
(@uuid_jadwal_ruang_praktikum26,'E1',@uuid_jadwal_praktikum6),
(@uuid_jadwal_ruang_praktikum27,'E2',@uuid_jadwal_praktikum6),
(@uuid_jadwal_ruang_praktikum28,'E3',@uuid_jadwal_praktikum6),
(@uuid_jadwal_ruang_praktikum29,'E4',@uuid_jadwal_praktikum6),
(@uuid_jadwal_ruang_praktikum30,'E5',@uuid_jadwal_praktikum6);

-- jadwal sesi praktikum

set @uuid_jadwal_sesi_praktikum1 = uuid();
set @uuid_jadwal_sesi_praktikum2 = uuid();
set @uuid_jadwal_sesi_praktikum3 = uuid();
set @uuid_jadwal_sesi_praktikum4 = uuid();
set @uuid_jadwal_sesi_praktikum5 = uuid();
set @uuid_jadwal_sesi_praktikum6 = uuid();
set @uuid_jadwal_sesi_praktikum7 = uuid();
set @uuid_jadwal_sesi_praktikum8 = uuid();
set @uuid_jadwal_sesi_praktikum9 = uuid();
set @uuid_jadwal_sesi_praktikum10 = uuid();
set @uuid_jadwal_sesi_praktikum11 = uuid();
set @uuid_jadwal_sesi_praktikum12 = uuid();
set @uuid_jadwal_sesi_praktikum13 = uuid();
set @uuid_jadwal_sesi_praktikum14 = uuid();
set @uuid_jadwal_sesi_praktikum15 = uuid();
set @uuid_jadwal_sesi_praktikum16 = uuid();
set @uuid_jadwal_sesi_praktikum17 = uuid();
set @uuid_jadwal_sesi_praktikum18 = uuid();
set @uuid_jadwal_sesi_praktikum19 = uuid();
set @uuid_jadwal_sesi_praktikum20 = uuid();
set @uuid_jadwal_sesi_praktikum21 = uuid();
set @uuid_jadwal_sesi_praktikum22 = uuid();
set @uuid_jadwal_sesi_praktikum23 = uuid();
set @uuid_jadwal_sesi_praktikum24 = uuid();
set @uuid_jadwal_sesi_praktikum25 = uuid();

INSERT INTO `penjadwalan`.`sesi_praktikum`
(`id_sesi_praktikum`,`sesi`,`kelas`,`modul`,`id_ruang_praktikum`)
VALUES
(@uuid_jadwal_sesi_praktikum1,0,'4IA01','java',@uuid_jadwal_ruang_praktikum1),
(@uuid_jadwal_sesi_praktikum2,1,'4IA02','c++',@uuid_jadwal_ruang_praktikum1),
(@uuid_jadwal_sesi_praktikum3,2,null,null,@uuid_jadwal_ruang_praktikum1),
(@uuid_jadwal_sesi_praktikum4,3,null,null,@uuid_jadwal_ruang_praktikum1),
(@uuid_jadwal_sesi_praktikum5,4,'4IA01','asp',@uuid_jadwal_ruang_praktikum1),
(@uuid_jadwal_sesi_praktikum6,0,null, null,@uuid_jadwal_ruang_praktikum2),
(@uuid_jadwal_sesi_praktikum7,1,'4IA02','jsp',@uuid_jadwal_ruang_praktikum2),
(@uuid_jadwal_sesi_praktikum8,2,'4IA01','myob',@uuid_jadwal_ruang_praktikum2),
(@uuid_jadwal_sesi_praktikum9,3,'4IA03','pweb',@uuid_jadwal_ruang_praktikum2),
(@uuid_jadwal_sesi_praktikum10,4,null, null,@uuid_jadwal_ruang_praktikum2),
(@uuid_jadwal_sesi_praktikum11,0,'4IA04','java',@uuid_jadwal_ruang_praktikum3),
(@uuid_jadwal_sesi_praktikum12,1,'4IA05','c++',@uuid_jadwal_ruang_praktikum3),
(@uuid_jadwal_sesi_praktikum13,2,'4IA04','jarkom',@uuid_jadwal_ruang_praktikum3),
(@uuid_jadwal_sesi_praktikum14,3,'4IA02','jarkomlan',@uuid_jadwal_ruang_praktikum3),
(@uuid_jadwal_sesi_praktikum15,4,null,null,@uuid_jadwal_ruang_praktikum3),
(@uuid_jadwal_sesi_praktikum16,0,null,null,@uuid_jadwal_ruang_praktikum4),
(@uuid_jadwal_sesi_praktikum17,1,null,null,@uuid_jadwal_ruang_praktikum4),
(@uuid_jadwal_sesi_praktikum18,2,'4IA011','java',@uuid_jadwal_ruang_praktikum4),
(@uuid_jadwal_sesi_praktikum19,3,'4IA016','c++',@uuid_jadwal_ruang_praktikum4),
(@uuid_jadwal_sesi_praktikum20,4,'4IA013','java',@uuid_jadwal_ruang_praktikum4),
(@uuid_jadwal_sesi_praktikum21,0,null,null,@uuid_jadwal_ruang_praktikum5),
(@uuid_jadwal_sesi_praktikum22,1,null,null,@uuid_jadwal_ruang_praktikum5),
(@uuid_jadwal_sesi_praktikum23,2,'4IA03','java',@uuid_jadwal_ruang_praktikum5),
(@uuid_jadwal_sesi_praktikum24,3,'4IA06','c++',@uuid_jadwal_ruang_praktikum5),
(@uuid_jadwal_sesi_praktikum25,4,'4IA010','java',@uuid_jadwal_ruang_praktikum5);