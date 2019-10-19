<?php 

/**
 * summary
 */
class M_Product extends CI_Model
{
    /**
     * summary
     */
    public function get_all()
    {
       return $this->db->get('products')->result();
    }

    public function get_detail($id = NULL)
    {
    	$product = $this->db->get_where('products', array('id' => (int)$id))->row();

        if($product->color)
        {
            $product->color = explode(',', $product->color);
        }

        return $product;
    }
}

?>