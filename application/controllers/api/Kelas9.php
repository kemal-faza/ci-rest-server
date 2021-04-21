<?php

use Restserver\Libraries\REST_Controller;

defined('BASEPATH') or exit('No direct script access allowed');

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Kelas9 extends REST_Controller
{
    public function __construct()
    {
        parent::__construct();

        // Load model yang akan digunakan
        $this->load->model('Kelas9_model', 'kelas9');
    }

    public function index_get()
    {
        // Ambil parameter jika ada
        $id = $this->get('id');
        $st = $this->get('st');

        // Cek apakah parameter id dan st ada keduanya
        if ($id && $st) {

            // Jika ada maka tampilkan pesan kesalahan
            $this->response([
                'status' => false,
                'pesan' => 'Pilih salah satu pencarian!'
            ], REST_Controller::HTTP_BAD_REQUEST);
        }

        // Cek apakah $id bernilai null
        if (is_null($id)) {

            // Jika null maka cek apakah $st bernilai null
            if (is_null($st)) {

                // Jika null maka jalankan fungsi getTugas() yang ada didalam model kelas9 tanpa mengirimkan argumen
                $tugas = $this->kelas9->getTugas();
            } else {

                // Jika berisi maka jalankan fungsu getTugas() dengan mengirimkan argumen pertama dengan nilai null dan argumen kedua dengan variabel st
                $tugas = $this->kelas9->getTugas(null, $st);
            }
        } else {

            // Jika berisi maka jalankan fungsi getTugas() dengan mengirimkan argumen $id tanpa argumen $st
            $tugas = $this->kelas9->getTugas($id);
        }

        // Cek apakah $tugas ada
        if ($tugas) {

            // Jika ada maka tampilkan data dari $tugas
            $this->response([
                'status' => true,
                'data' => $tugas
            ], REST_Controller::HTTP_OK);
        } else {

            // Jika tidak ada maka tampilkan pesan kesalahan
            $this->response([
                'status' => false,
                'pesan' => 'Data tidak ditemukan!'
            ], REST_Controller::HTTP_NOT_FOUND);
        }
    }
}
