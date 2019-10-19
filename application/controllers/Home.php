<?php  
/**
 * summary
 */
class Home extends CI_Controller
{
    /**
     * summary
     */

    public function __construct()
    {
    	parent::__construct();
    	if($this->session->userdata('item'))
    		$this->session->unset_userdata('token');
    }
    public function index()
    {
    	$data['content'] = 'page/home/index';
    	$data['products'] = $this->M_Product->get_all();
        $this->load->view('layout', $data);
    }
}

?>