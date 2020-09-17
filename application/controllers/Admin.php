<?php

/**
 * 
 */
class Admin extends CI_Controller
{
	
	function __construct()
	{
		 parent::__construct();
         
        $this->load->model(array(
            'admin_model'
           
        )); 
	}
	public function index()
    {   

        // redirect to dashboard home page
        // if($this->session->userdata('isLogIn')) 
        // $this->redirectTo($this->session->userdata('user_role'));

        $this->form_validation->set_rules('email', 'email','required|max_length[50]|valid_email');
        $this->form_validation->set_rules('password','password','required|max_length[32]|md5');
        $this->form_validation->set_rules('user_role','user_role','required');
        #-------------------------------#
      

            $email =$this->input->post('email');
            $password =$this->input->post('password');
            $user_role=$this->input->post('user_role');
        //print_r($data['user']);die;

            $data['user'] = (object)$postData = [
           
            'email'     => $this->input->post('email',true),
            'password'  => md5($this->input->post('password',true)),
            'user_role' => $this->input->post('user_role',true),
        ]; 
        #-------------------------------#
        if ($this->form_validation->run() === true) {
            //check user data
            // $this->load->model('Indexm');
            if($this->admin_model->check_user($email,$password,$user_role))
            {
                  $session_data =array(
                           'email'  => $email,
                           // 'user_role' =>$user_role,

                   
                );

                $this->session->set_userdata($session_data);

                //redirect to dashboard home page
                // $this->redirect('dashboard/index');
              redirect(base_url().'dashboard');

            } else {
                #set exception message
                $this->session->set_flashdata('exception','incorrect_email_password');
                //redirect to login form
               $this->load->view('login');
            }

        } else {
            $this->load->view('login');
        } 
    }

    public function logout()
    {   
        $this->session->sess_destroy(); 
        redirect('admin');
    }   

   

}









?>