<?php  

/**
 * summary
 */
class Cart extends MY_Controller
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
    // echo "<pre>";
    // print_r($this->cart->contents());
    // echo "<pre>";
   	$data['content'] = 'page/cart/index';

   	$data['items'] = $this->cart->contents();

   	$this->load->view('layout', $data);

   	// print_r($this->cart->contents());
   }

   public function add()
   {
   	if (isset($_POST['add_to_cart']))
   	{
   		// 1.mendapatkan data berdasarkan id
   		$product = $this->M_Product->get_detail($this->input->post('id'));
   		// 2.masukkan data ke cart
   		$data = array(
   			'id' => $product->id,
   			'name' => $product->name,
   			'qty' => $this->input->post('qty'),
   			'price' => $product->price,
   			'option' => array('color' => $this->input->post('color'))
   		);

   		$this->M_Cart->add($data);

      $alert_message = ' <a href="'.site_url('cart').'"><p class="alert alert-success">Go to cart &raquo;</p></a>' ;

      $this->session->set_flashdata('success', $alert_message);

   		redirect('product/detail/'.$product->id.'/'.$product->slug); 		
   	}
   }

   public function remove()
   {     
       $this->M_Cart->remove($this->uri->segment(3));

        $alert_message = '<p class="alert alert-success">item berhasil hapus</p>' ;

      $this->session->set_flashdata('success', $alert_message);

       redirect('cart');
   }

   public function update()
   {
    $data = array(
            'rowid' => $this->input->post('rowid'),
            'qty' => $this->input->post('qty'),
            'color' => $this->input->post('color')
    );
    $this->M_Cart->update($data);

     $alert_message = '<p class="alert alert-success">Shopping Cart berhasil diupdate</p>' ;

      $this->session->set_flashdata('success', $alert_message);

    redirect('cart');
   }
}
?>