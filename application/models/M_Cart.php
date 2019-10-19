<?php  

/**
 * summary
 */
class M_Cart extends CI_Model
{
    /**
     * summary
     */
    public function index()
    {
    	echo $this->cart->total();
    	echo '<pre>';
      	print_r($this->cart->contents()); 
    }

    public function add($data = array())
    {

    	$this->cart->insert($data);
    	
    	// $data = array(
    	// 	'id' => 2,
    	// 	'name' => 'barang jualan',
    	// 	'price' => 65000,
    	// 	'qty' => 1,
    	// 	'options' => array('size' => 'L', 'color' => 'white')
    	// );
    	// $this->cart->insert($data);

    	// echo 'cart berhasil ditambah';
    }

    public function remove($rowid)
    {
        $data = array(
                'rowid' => $rowid,
                'qty' => 0
        );

        $this->cart->update($data);

        
    	// $data = array(
    	// 	'rowid' => '4d459a7ca8f62e3a6f8a7922c7f0c166',
    	// 	'qty' => 0
    	// );    
        // echo 'item berhasil dihapus';
    }

    public function remove_all()
    {
    	$this->cart->destroy();

    	echo 'Cart berhasil dikosongkan';
    }

    public function update($data = array())
    {
    	// $data = array(
    	// 	'rowid' => '6b334584deda3b868b4deee29c1972a0',
    	// 	'qty' => 3
    	// );
        for ($i = 0; $i < count($this->cart->contents()) ; $i++) 
        {
            $data_update = array(
                        'rowid'     => $data['rowid'][$i],
                        'qty'       => $data['qty'][$i],
                        'option'    => array('color' => $data['color'][$i])
            );    
            $this->cart->update($data_update);
        }

    }
}


?>