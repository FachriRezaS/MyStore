<?php  

/**
 * summary
 */
class Ringkasan extends MY_Controller
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
    	if( ! $this->session->userdata('id')) redirect('account');

        $data['content'] = 'page/checkout/ringkasan';
        $data['order'] = $this->cart->contents();
        $data['member'] = $this->Member_m->get_member_by_id($this->session->userdata('id'));

        $this->load->view('layout', $data);
    }

    public function order_submit()
    {
    	$this->M_Order->order_submit();

    	$no_token = random_string('numeric', 5);

    	$this->session->set_userdata('token', $no_token);

    	// masuk pada halaman finish
    	redirect('ringkasan/finish/'.$no_token);
    }

    public function finish($token = NULL)
    {
    	if($token == NULL or $this->session->userdata('token') == NULL)
    	{
    		redirect(base_url());
    	}
    	else 
    	{
    		if($token != $this->session->userdata('token'))
    		{
    			redirect(base_url());
    		}		
    	}

    	if( ! $this->session->userdata('kode')) redirect(base_url());

    	$data['content'] = 'page/checkout/finish';
    	$data['order'] = $this->M_Order->get_order($this->session->userdata('kode'));

        $this->load->view('layout', $data);
    }

}


?>