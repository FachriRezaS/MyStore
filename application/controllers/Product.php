<?php  
/**
 * summary
 */
class Product extends MY_Controller
{
	public function __construct()
    {
    	parent::__construct();
    	if($this->session->userdata('item'))
    		$this->session->unset_userdata('token');
    }

    public function detail()
    {
    	$id = $this->uri->segment(3);

    	$data['content'] = 'page/product/detail';

    	$data['product'] = $this->M_Product->get_detail($id);
    	
    	$this->load->view('layout', $data);
    }
}


?>