<?php

class Kelas9_model extends CI_Model
{
    // FUNGSI UNTUK MENGAMBIL DATA TUGAS DARI DATABASE
    public function getTugas($id = null, $st = null)
    {
        if (is_null($id)) {
            if ($st) {
                // JIKA $st ADA MAKA AMBIL DATA BERDASARKAN NAMA TUGAS DARI $st
                $this->db->like('tugas', $st);
            }
            // JIKA ID TIDAK ADA MAKA AMBIL SEMUA DATA DARI TABEL kelas9
            return $this->db->get('kelas9')->result_array();
        } else {
            // JIKA ID ADA MAKA AMBIL DATA BERDASARKAN ID DARI TABEL kelas9
            return $this->db->get_where('kelas9', ['id' => $id])->result_array();
        }
    }
}
