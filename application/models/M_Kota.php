<?php 
/**
 * summary
 */
class M_Kota extends CI_Model
{
    /**
     * summary
     */
    public function get_kota_by_prov_id($prov_id)
    {
    	// var_dump($prov_id); die;
    	return $this->db->get_where('kota', array('provinsi_id' => $prov_id))->result();
    }

    public function get_provinsi()
    {
    	return $this->db->get('provinsi')->result();
    }
}
?>