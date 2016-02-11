<?php

/**
 *
 * Author Rizki Mufrizal <mufrizalrizki@gmail.com>
 * Since Feb 10, 2016
 * Time 2:38:20 PM
 * Encoding UTF-8
 * Project Aplikasi-Penjadwalan
 * Package Expression package is undefined on line 12, column 14 in Templates/Scripting/PHPClass.php.
 * 
 */
class PraktikumController extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Praktikum');
        $this->load->model('Kuliah');
        $this->load->library('CSVReader');
    }

    public function simpanJadwalPraktikum() {

        $kelas = $this->input->post('kelas');
        $mata_praktikum = $this->input->post('mata_praktikum');

        $c = $this->Kuliah->getJadwalKosongByKelas($kelas);
        $b = $this->Praktikum->ruangPraktikumKosong();

        $stop = FALSE;

        foreach ($c as $ck) {
            foreach ($b as $bk) {
                if ($ck->sesi == $bk->sesi) {

                    $data = array(
                        'kelas' => $kelas,
                        'mata_praktikum' => $mata_praktikum
                    );

                    $id = $bk->id_sesi_praktikum;

                    $this->Praktikum->tambahJadwalPraktikum($data, $id);

                    $stop = true;
                    break;
                }
            }
            if ($stop) {
                break;
            }
        }
        redirect('praktikum');
    }

    public function pagePraktikum() {
        $data['dataPraktikum'] = $this->Praktikum->getAllJadwalPraktikum();
        $data['dataPraktikumKosong'] = $this->Praktikum->getAllJadwalPraktikumKosong();
        $this->load->view('PraktikumView', $data);
    }

    public function uploadJadwalPraktikum() {
        $config['upload_path'] = './uploads/';
        $config['allowed_types'] = 'csv';
        $config['max_size'] = '1000';

        $this->load->library('upload', $config);

        if (!$this->upload->do_upload()) {
            $data['error'] = $this->upload->display_errors();

            $this->load->view('csvindex', $data);
        } else {
            $file_data = $this->upload->data();
            $file_path = './uploads/' . $file_data['file_name'];

            $result = $this->csvreader->parse_file($file_path);
            foreach ($result as $row) {
                $id_jadwal = $this->Praktikum->getPraktikumByHari($row['hari'])[0]->id_jadwal_praktikum;

                $id = $this->Praktikum->getRuangPraktikumByRuangAndId($row['ruang'], $id_jadwal)[0]->id_ruang_praktikum;

                $val = array(
                    'sesi' => $row['sesi'],
                    'mata_praktikum' => empty($row['mata_praktikum']) ? NULL : $row['mata_praktikum'],
                    'kelas' => empty($row['kelas']) ? NULL : $row['kelas'],
                    'id_ruang_praktikum' => $id
                );

                $this->Praktikum->simpanJadwalPraktikum($val);
            }

            redirect('praktikum');
        }
    }

    public function uploadListKelas() {
        $config['upload_path'] = './uploads/';
        $config['allowed_types'] = 'csv';
        $config['max_size'] = '1000';

        $this->load->library('upload', $config);

        if (!$this->upload->do_upload()) {
            $data['error'] = $this->upload->display_errors();

            $this->load->view('csvindex', $data);
        } else {
            $file_data = $this->upload->data();
            $file_path = './uploads/' . $file_data['file_name'];

            $result = $this->csvreader->parse_file($file_path);
            foreach ($result as $row) {

                $kelas = $row['kelas'];
                $mata_praktikum = $row['mata_praktikum'];

                $c = $this->Kuliah->getJadwalKosongByKelas($kelas);
                $b = $this->Praktikum->ruangPraktikumKosong();

                $stop = FALSE;

                foreach ($c as $ck) {
                    foreach ($b as $bk) {
                        if ($ck->sesi == $bk->sesi) {

                            $data = array(
                                'kelas' => $kelas,
                                'mata_praktikum' => $mata_praktikum
                            );

                            $id = $bk->id_sesi_praktikum;

                            $this->Praktikum->tambahJadwalPraktikum($data, $id);

                            $stop = true;
                            break;
                        }
                    }
                    if ($stop) {
                        break;
                    }
                }
            }

            redirect('praktikum');
        }
    }

    public function hapusAllDataPraktikum() {
        $this->Praktikum->hapusAllDataPraktikum();
        redirect('praktikum');
    }

}
