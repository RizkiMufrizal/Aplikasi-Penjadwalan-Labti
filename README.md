# Aplikasi-Penjadwalan-Labti
Merupakan aplikasi yang dibangun untuk kebutuhan penjadwalan di laboratorium teknik informatika

## Jam Kuliah

* Jam 1 : 07.30 - 08.30
* Jam 2 : 08.30 - 09.30
* Jam 3 : 09:30 - 10:30
* Jam 4 : 10:30 - 11:30
* Jam 5 : 11:30 - 12:30
* Jam 6 : 12:30 - 13:30
* Jam 7 : 13:30 - 14:30
* Jam 8 : 14:30 - 15:30
* Jam 9 : 15:30 - 16:30
* Jam 10 : 16:30 - 17:30
* Jam 11 : 17:30 - 18:30
* Jam 12 : 18:30 - 19:30

## Shift Lab

* Shift 1 : Jam 1 + Jam 2   : 07:30 - 09:30
* Shift 2 : Jam 3 + Jam 4   : 09:30 - 11:30
* Shift 3 : Jam 5 + Jam 6   : 11:30 - 13:30
* Shift 4 : Jam 7 + Jam 8   : 13:30 - 15:30
* Shift 5 : Jam 9 + Jam 10  : 15:30 - 17:30
* Shift 6 : Jam 11 + Jam 12 : 17:30 - 19:30

## Shift Yang Kosong

* Shift 3 pada hari jumat
* Shift 6 pada hari sabtu


## Cara Menjalankan

* Silahkan buat database dengan nama `labti_penjadwalan`
* pilih database tersebut kemudian jalankan query - query yang terdapat di dalam folder `sql, csv dan table view` secara berurutan seperti berikut :
    
    1. jalankan query `labti_penjadwalan.sql` untuk membuat semua tabel
    2. jalankan query `seed_kuliah.sql` untuk data seed kuliah
    3. jalankan query `seed_praktikum.sql` untuk data seed praktikum
    4. jalankan query `cari_kelas_kosong.sql` berfungsi membuat tabel view untuk mencari kelas yang kosong
    5. jalankan query `cari_ruang_sesi_praktikum_kosong.sql` berfungsi membuat tabel view untuk mencari sesi, ruang praktikum yang kosong
    6. jalankan query `query_jadwal_kuliah.sql` berfungsi membuat tabel view untuk mencari jadwal kuliah
    7. jalankan query `query_jadwal_praktikum.sql` berfungsi membuat tabel view untuk mencari jadwal praktikum

* upload file `Data-Dami-Jadwal-Kuliah.csv` untuk jadwal kuliah
* upload file `Data-Dami-Jadwal-Praktikum.csv` untuk jadwal praktikum yang kosong
* upload file `Data-Dami-List-Kelas-MataPraktikum.csv` untuk list kelas beserta mata praktikum