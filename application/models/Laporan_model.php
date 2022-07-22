<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Laporan_model extends CI_Model
{
    public function view_by_date($tanggal1, $tanggal2)
    {
        $this->db->query('*');
        $this->db->from('invoice');
        $this->db->where('date_input BETWEEN"' . date('Y-m-d', strtotime($tanggal1)) . '"and"' . date('Y-m-d', strtotime($tanggal2)) . '"');
        $this->db->order_by('date_input');
        return $query = $this->db->get(); // Tampilkan data transaksi sesuai tanggal yang diinput oleh user pada filter  
    }
    public function pelanggan()
    {
        $query = $this->db->query("
		select name, invoice_code 
		from invoice
		");
        return $query->result();
    }
    public function view_all()
    {
        $query = $this->db->query("
		select* 
		from invoice
		");
        return $query->result();
    }
    public function invoice_code()
    {
        $this->db->select('*');
        $this->db->from('invoice');
        return $query = $this->db->get()->result();
    }
    public function view_by_invoice_code($invoice_code)
    {
        $query = $this->db->query("
		select* 
		from invoice
		where invoice_code = " . $invoice_code . "
		");
        return $query = $this->db->get();
    }
}
