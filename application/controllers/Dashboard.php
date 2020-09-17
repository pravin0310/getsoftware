<?php

/**
 * 
 */
class Dashboard extends CI_Controller
{
	
	public function __construct()
    {
		 parent::__construct();
		  $this->load->library('session');
			//  if ($this->session->userdata('logged_in'))

			// {
			// redirect('admin'); 
			// }
		 // if ($this->session->userdata('isLogIn') == true 
   //          || $this->session->userdata('user_role') != 10
   //      ) 
   //      redirect('admin');



		// if (! $this->session->userdata('logged_in') == false 
		//         || $this->session->userdata('user_role') != 10
		//     ) 
		//     redirect('admin'); 
			
	}

	function index()
	{

		// $data=$this->session->userdata('user_role');
		// echo json_encode($data);
		// exit();
		$this->load->view('header');
		$this->load->view('dashboard');
		$this->load->view('footer');
	}

}





?>