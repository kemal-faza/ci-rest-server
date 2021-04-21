<?php

class Tugas extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();

        // Load model yang akan digunakan
        $this->load->model('Tugas_model', 'tugas');

        // Load library form_validation
        $this->load->library('form_validation');
    }

    // Fungsi untuk menangani halaman index
    public function index()
    {

        // Cek apakah session login sudah ada atau belum
        if ($this->session->userdata('login')) {

            // Jika ada maka masukkan nilainya kedalam variabel session 
            $session = $this->session->userdata('login');
        } else {

            // Jika belum ada maka arahkan user ke halaman login
            redirect('tugas/login');
        }

        // Buat variabel $data['session'] yang diisi dengan variabel session 
        $data['session'] = $session;

        // Buat judul halaman
        $data['judul'] = 'Halaman Index';

        // Load view yang sudah dibuat dan kirimkan data
        $this->load->view('template/header', $data);
        $this->load->view('tugas/index', $data);
        $this->load->view('template/footer');
    }

    // Fungsi untuk menangani halaman login
    public function login()
    {
        // Buat judul
        $data['judul'] = 'Halaman Login';

        // Validasi form
        $this->form_validation->set_rules('username', 'Nama pengguna', 'required');
        $this->form_validation->set_rules('password', 'Password', 'required');
        $this->form_validation->set_rules('password-verify', 'Verifikasi password', 'required|matches[password]');

        // Cek apakah validasi form berhasil atau tidak
        if ($this->form_validation->run() == FALSE) {

            // Jika tidak maka tampilkan halaman login kembali
            $this->load->view('template/header', $data);
            $this->load->view('tugas/login');
            $this->load->view('template/footer');
        } else {

            // Jika berhasil maka jalankan fungsi login yang ada di model tugas

            // Cek apakah fungsi login menghasilkan angka yang lebih besar dari 0
            if ($this->tugas->login() > 0) {

                // Jika iya maka arahkan user ke halaman index
                redirect('tugas');
            } else {

                // Jika tidak maka arahkan user kembali ke halaman login
                redirect('tugas/login');
            }
        }
    }

    // Fungsi untuk menangani halaman registrasi
    public function registrasi()
    {
        // Buat judul
        $data['judul'] = 'Halaman Registrasi';

        // Validasi form
        $this->form_validation->set_rules('username', 'Nama pengguna', 'required');
        $this->form_validation->set_rules('password', 'Password', 'required');
        $this->form_validation->set_rules('password-verify', 'Verifikasi password', 'required|matches[password]');

        // Cek apakah validasi form berhasil atau tidak
        if ($this->form_validation->run() == FALSE) {

            // Jika tidak maka tampilkan halaman registrasi kembali
            $this->load->view('template/header', $data);
            $this->load->view('tugas/registrasi');
            $this->load->view('template/footer');
        } else {

            // Jika berhasil maka jalankan fungsi registrasi dari model tugas dan simpan nilai kembaliannya ke dalam variabel result
            $result = $this->tugas->registrasi();

            // Cek apakah ada key error didalam variabel result
            if ($result['error']) {

                // Jika ada maka buat session error yang diisi dengan pesan kesalahan yang ada di variebel result
                $this->session->set_userdata('error', $result['error']);

                // Arahkan user kembali ke halaman registrasi
                redirect('tugas/registrasi');
            } else {

                // Jika tidak ada maka buat session success yang diisi dengan pesan konfirmasi yang ada di variebel result
                $this->session->set_userdata('success', $result['pesan']);

                // Arahkan user ke halaman login
                redirect('tugas/login');
            }
        }
    }
}
