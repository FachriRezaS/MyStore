<?php  

/**
 * summary
 */
class Member_m extends CI_Model
{
    /**
     * summary
     */
    public function check_account($email = '', $password = '')
    {
    	return $this->db->get_where('member', 
    		array
    		(
    			'email' => $email, 
    			'password' => hashpassword($password)
    		)
    	)->row();
    }

    public function insert($data = array())
    {
    	$this->db->insert('member', $data);
    }

    public function get_member_by_id($member_id)
    {
        return $this->db->get_where('member',array('id' => $member_id))->row();
    }
}


?>
