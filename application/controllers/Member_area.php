<?php  

/**
 * summary
 */
class Member_area extends MY_Controller
{
    /**
     * summary
     */
    public function __construct()
    {
    	parent::__construct();
    	//Do your magic here
    }

    public function index()
    {
    	$data['content'] = 'page/member_area/profile';
    	$this->load->view('layout', $data);
    }

    public function edit_profile()
    {
    	$data['content'] = 'page/member_area/edit_profile';
    	$this->load->view('layout', $data);
    }

    public function order()
    {
    	$data['content'] = 'page/member_area/order';
    	$data['order'] = $this->M_Order->get_all();
    	// print_r($data['order']);

    	$this->load->view('layout', $data);
    }

    public function order_detail()
    {
    	$data['content'] = 'page/member_area/order_detail';

    	$kode = $this->uri->segment(3);

    	$data['order'] = $this->M_Order->get_by_kode($kode);
    	$data['order_detail'] = $this->M_Order->get_detail($kode);

    	// print_r($data['order_detail']);

    	$this->load->view('layout', $data);
    }

    public function konfirmasi()
    {
    	$data['content'] = 'page/member_area/konfirmasi';

        $kode = $this->uri->segment(3);
        $order = $this->db->get_where('order', array('kode' => $kode))->row();
        if(empty($order)) redirect('member_area');

        $data['order_id'] = $order->kode;

    	$this->load->view('layout', $data);
    }

    public function wishlist()
    {
    	$data['content'] = 'page/member_area/wishlist';
    	$this->load->view('layout', $data);
    }
}

?>