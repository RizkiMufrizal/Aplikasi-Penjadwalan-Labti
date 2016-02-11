<?php

/**
 *
 * Author Rizki Mufrizal <mufrizalrizki@gmail.com>
 * Since Feb 10, 2016
 * Time 2:30:32 PM
 * Encoding UTF-8
 * Project Aplikasi-Penjadwalan
 * Package Expression package is undefined on line 12, column 14 in Templates/Scripting/PHPClass.php.
 * 
 */
class Praktikum extends CI_Model {

    public function ruangPraktikumKosong() {
        $this->db->select('id_sesi_praktikum');
        $this->db->select('sesi');
        return $this->db->get('cari_ruang_sesi_praktikum_kosong')->result();
    }

    public function tambahJadwalPraktikum($dataPraktikum, $id) {
        $data = array(
            'kelas' => $dataPraktikum['kelas'],
            'modul' => $dataPraktikum['modul']
        );
        $this->db->where('id_sesi_praktikum', $id);
        $this->db->update('sesi_praktikum', $data);
    }

    public function getAllJadwalPraktikum() {
        return $this->db->get('query_jadwal_praktikum')->result();
    }

    public function getAllJadwalPraktikumKosong() {
        return $this->db->get('cari_ruang_sesi_praktikum_kosong')->result();
    }

    public function getPraktikumByHari($hari) {
        $this->db->select('id_jadwal_praktikum');
        $this->db->where('hari', $hari);
        return $this->db->get('jadwal_praktikum')->result();
    }

    public function getRuangPraktikumByRuangAndId($ruang, $id_jadwal_praktikum) {
        $this->db->select('id_ruang_praktikum');
        $this->db->where('ruang', $ruang);
        $this->db->where('id_jadwal_praktikum', $id_jadwal_praktikum);
        return $this->db->get('ruang_praktikum')->result();
    }

    public function simpanJadwalPraktikum($dataPraktikum) {
        $val = array(
            'id_sesi_praktikum' => $this->uuid->v4(),
            'kelas' => $dataPraktikum['kelas'],
            'sesi' => $dataPraktikum['sesi'],
            'mata_praktikum' => $dataPraktikum['mata_praktikum'],
            'id_ruang_praktikum' => $dataPraktikum['id_ruang_praktikum']
        );
        $this->db->insert('sesi_praktikum', $val);
    }

    public function hapusAllDataPraktikum() {
        $this->db->truncate('sesi_praktikum');
    }

}
