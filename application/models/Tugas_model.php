<?php

class Tugas_model extends CI_Model
{
    // FUNGSI UNTUK MENANGANI FORM LOGIN
    public function login()
    {
        // AMBIL USERNAME DAN PASSWORD DARI FORM LOGIN
        $username = $this->input->post('username', true);
        $password = $this->input->post('password', true);

        // AMBIL SEBUAH DATA DARI TABEL users YANG username-nya SAMA DENGAN username INPUT
        $result = $this->db->get_where('users', ['username' => $username])->row_array();

        // Cek apakah $result bernilai null atau bukan
        if (is_null($result)) {

            // JIKA TIDAK ADA MAKA BUAT SESSION ERROR DAN KELUAR DARI FUNGSI
            $this->session->set_userdata('error', 'Nama pengguna tidak ditemukan!');
            return 0;
        }

        // JIKA ADA MAKA AMBIL SEBUAH DATA DARI TABEL keys YANG user_id-nya SAMA DENGAN id DARI USER DARI TABEL users
        $login = $this->db->get_where('keys', ['user_id' => $result['id']])->row_array();

        // Cek kesamaan password
        if (password_verify($password, $result['password'])) {
            // Jika sama maka buat session login yang diisi dengan $login
            $this->session->set_userdata('login', $login);
        } else {
            // Jika tidak sama maka buat session error yang diisi pesan kesalahan dan keluar dari fungsi
            $this->session->set_userdata('error', 'Password yang dimasukkan salah!');
            return 0;
        }

        // Jika semua langkah berhasil kembalikan jumlah baris yang berubah
        return $this->db->affected_rows();
    }

    // Fungsi untuk menangani form registrasi
    public function registrasi()
    {
        // Ambil username dan passwrod dari form registrasi
        $username = $this->input->post('username', true);
        $password = $this->input->post('password', true);

        // Enkripsi password
        $password = password_hash($password, PASSWORD_DEFAULT);

        // Ambil sebuah data dari tabel users yang username-nya sama dengan username input
        $result = $this->db->get_where('users', ['username' => $username])->row_array();

        // Cek apakah $result bernilai null atau bukan
        if (is_null($result)) {

            // Jika bernilai null maka jalankan perintah berikut

            // Buat variabel data sebagai data untuk dimasukkan ke dalam tabel users
            $data = [
                'username' => $username,
                'password' => $password
            ];

            // Masukkan isi variabel data kedalam tabel users
            $this->db->insert('users', $data);

            // Ambil data yang sudah dimasukkan kedalam tabel users tadi ke sebuah variabel result
            $result = $this->db->get_where('users', ['username' => $username])->row_array();

            // Generate string random
            $idUnik = random_bytes(10);
            $idUnik = bin2hex($idUnik);

            // Buat variabel key sebagai data untuk dimasukkan ke dalam tabel keys
            $key = [

                // Masukkan nilai user_id sebagai id dari user yang telah diambil datanya sebelumnya
                'user_id' => $result['id'],

                // Masukkan nilai key sebagai string random yang sudah digenerate tadi
                'key' => $idUnik,
                'level' => '1',
                'ignore_limits' => '0',
                'is_private_key' => '0',
                'ip_addresses' => '',

                // Masukkan nilai date_created sebagai tanggal, bulan, dan tahun saat user mendaftar
                'date_created' => date('dmY')
            ];

            // Tambahkan data variabel key ke dalam tabel keys
            $this->db->insert('keys', $key);

            // Buat variabel pesan yang berisi pesan konfirmasi
            $pesan = [
                'pesan' => 'Nama pengguna berhasil didaftarkan! Silahkan masuk untuk melanjutkan.'
            ];
        } else {

            // Jika $result tidak bernilai null berarti username sudah pernah terdaftar
            // Buat variabel pesan yang berisi pesan kesalahan
            $pesan = [
                'error' => 'Nama pengguna sudah terdaftar!'
            ];
        }

        // Kembalikan variabel pesan
        return $pesan;
    }
}
