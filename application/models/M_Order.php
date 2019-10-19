<?php  

/**
 * summary
 */
class M_Order extends CI_Model
{
    /**
     * summary
     */
    public function order_submit()
    {
        //  proses submit

    	// 1. masukkan pesanan ke tabel order
    	$orderdata = array(
    		'status' 				=> 0,
    		'member_id' 			=> $this->session->userdata('id'),
    		'total_product' 		=> count($this->cart->contents()),
    		'total_qty' 			=> $this->cart->total_items(),
    		'total_harga' 			=> $this->cart->total(),
    		'tarif_pengiriman_id' 	=> $this->session->userdata('tarif_id')
    	);

    	$this->db->insert('order', $orderdata);

    	// masukkan kode order histori
    	$id   = $this->db->insert_id();
    	$kode = $id . random_string('alnum', 7);

    	$this->db->update('order', array('kode' => $kode), array('id' => $id));

    	// 2. masukkan data ke tabel order_detail
    	foreach ($item = $this->cart->contents() as $item) 
    	{
    		$orderdetaildata = array(
    			'order_id'		=> $id,
    			'product_id'	=> $item['id'],
    			'options'		=> $item['option']['color'],
    			'qty'			=> $item['qty'],
    			'sub_total'		=> $item['subtotal'],
    		);

    		$this->db->insert('order_detail',  $orderdetaildata);

    	}

    	// 3. sending email
    	$config['mailtype'] = 'html';
    	$this->email->initialize($config);

    	$this->email->from('infro@mystore.com', 'My Store');
		$this->email->to($this->session->userdata('email'));

		$this->email->subject('Pesanan Anda');
		$this->email->message($this->load->view('page/email/order_history'));
		$this->email->send();

    	// 4. buat session order

    	$this->session->set_userdata('kode', $kode);

    	$this->cart->destroy();
    }

    public function get_order($kode)
    {
    	return $this->db->get_where('order', array('kode' => $kode))->row();
    }

    public function get_all()
    {
       return $this->db->get_where('order', 
            array('member_id' => $this->session->userdata('id')))->result();
    }

    public function get_detail($kode)
    {
        $order_id = $this->db->get_where('order', 
            array('kode' => $kode))->row('id');

        $this->db->select('od.*, p.name, p.price');
        $this->db->from('order_detail od');
        $this->db->join('products p', 'od.product_id = p.id');
        $this->db->where('od.order_id', $order_id);

        return $this->db->get()->result();
    }

    public function get_by_kode($kode)
    {
       return $this->db->get_where('order', array('kode' => $kode))->row();

    }
}

?>