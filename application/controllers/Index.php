<?php

/**
 * 
 */
class Index extends CI_Controller
{
	
	public function __construct()
    {
		 parent::__construct();
			 if($this->session->userdata(['user_role']!=10))
			{
			redirect('admin');
			}
		$this->load->model(array(
		'indexc'

		)); 
			
	}

	function index()
	{
		
		$data=$this->indexc->fetch();
      
		// $this->load->view('header',$data);
		$this->load->view('welcome_message',$data);
		// $this->load->view('footer',$data);
	}

}




?>