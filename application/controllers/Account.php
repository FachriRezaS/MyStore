<?php  

/**
 * summary
 */
class Account extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->session->userdata('is_login') == FALSE || redirect('tariff');
        if($this->session->userdata('item'))
            $this->session->unset_userdata('token');
    }
    /**
     * summary
     */
    public function index()
    {
        $data['content'] = 'page/checkout/login';

        $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
        $this->form_validation->set_rules('password', 'Password', 'required');

        if ($this->form_validation->run() == FALSE) 
        {
            $this->load->view('layout', $data);
        } else {
            // proses login
            $email = $this->input->post('email');
            $password = $this->input->post('password');

            // dapatkan data berdasarkan email dan password
            $member = $this->Member_m->check_account($email,$password);

            // cek apakah email dan password ada
            if ($member) 
            {
                $data_sess = array(
                    'id'        =>$member->id,
                    'nama'      =>$member->nama_depan,
                    'email'     =>$member->email,
                    'is_login'  =>True

                );
                $this->session->set_userdata($data_sess);

                redirect(base_url());
            }
            else
            {
                $this->session->set_flashdata('failed', 'Akun yang ada masukan salah. Silahkan coba lagi');

                redirect('account/index');
            }
        }
                
    }

    public function register()
    {
    	$data['content'] = 'page/checkout/register';
        $data['provinsi'] =$this->M_Kota->get_provinsi();

        $this->form_validation->set_rules('nama_depan', 'Nama Depan', 'required');
        $this->form_validation->set_rules('nama_belakang', 'Nama Belakang', 'required');
        $this->form_validation->set_rules('tanggal', 'Tanggal', 'required');
        $this->form_validation->set_rules('bulan', 'Bulan', 'required');
        $this->form_validation->set_rules('tahun', 'Tahun', 'required');
        $this->form_validation->set_rules('jenis_kelamin', 'Jenis Kelamin', 'required');
        $this->form_validation->set_rules('email', 'Email', 'required|valid_email|is_unique[member.email]');
        $this->form_validation->set_rules('provinsi', 'Provinsi', 'required');
        $this->form_validation->set_rules('kota', 'Kota', 'required');
        $this->form_validation->set_rules('kode_pos', 'Kode Pos', 'required');
        $this->form_validation->set_rules('telpon', 'Telpon', 'required|is_natural');
        $this->form_validation->set_rules('alamat', 'Alamat', 'required');      
        $this->form_validation->set_rules('password', 'Password', 'required|min_length[8]');  
        $this->form_validation->set_rules('konfirmasi_password', 'Konfirmasi password', 'required|min_length[8]|matches[password]');  

        if ($this->form_validation->run() == FALSE)
        {
            $this->load->view('layout', $data);
        }
        else 
        {
            $tanggal_lahir = $this->input->post('tahun').'-'.$this->input->post('bulan').'-'.$this->input->post('tanggal');

            $this->Member_m->insert(
                array(
                    'nama_depan'    => $this->input->post('nama_depan'),
                    'nama_belakang' => $this->input->post('nama_belakang'),
                    'tanggal_lahir' => $tanggal_lahir,
                    'jenis_kelamin' => $this->input->post('jenis_kelamin'),
                    'email'         => $this->input->post('email'),
                    'provinsi'      => $this->input->post('provinsi'),
                    'kota'          => $this->input->post('kota'),
                    'kode_pos'      => $this->input->post('kode_pos'),
                    'telepon'       => $this->input->post('telpon'),
                    'alamat'        => $this->input->post('alamat'),
                    'password'      => hashpassword($this->input->post('password'))
                )
            );
            redirect('tariff');
        } 
    }

    public function logout()
    {
        $this->session->unset_userdata(array('id','nama', 'email', 'is_login'));

        redirect(base_url());
    }

    public function get_kota()
    {
        parent::kota();
    }

    // public function hash()
    // {        
    //     $password = '#4d1r3z4#';
    //     echo hash('sha512', $password . config_item('encryption_key'));
    // }
    
}


?>