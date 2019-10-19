<?php  
/**
 * summary
 */
class MY_Controller extends CI_Controller
{
	public function __construct()
	{
		parent:: __construct();
		/*load mode*/
		$this->load->model(array('M_Product','M_Cart', 'Member_m', 'M_Kota', 'M_Tarif', 'M_Order'));
	}

	public function kota()
	{
		$prov_id = $this->input->post('prov_id');

		// var_dump($prov_id); die;

		$kota = $this->M_Kota->get_kota_by_prov_id($prov_id);

		$output = '';

		if($kota) 
		{
			foreach($kota as $result) 
			{
				$output .= '<option value="'.$result->id.'">';
				$output .= $result->nama_kota;
				$output .= '</option>';
			}
		}

		echo $output;
	}
}


?>