<?php

/**
 * 
 */

class Welcomem extends CI_Model
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
	
	function fetchan(){

		$data=$this->indexc->fetch();
      
		// $this->load->view('header',$data);
		$this->load->view('welcome_message',$data);
		// $this->db->get('')
	}
	function livefetch($query)
	{
			$this->db->select("*");
			$this->db->from("products");
			if($query != '')
			{
			$this->db->like('name', $query);
			$this->db->or_like('type', $query);
		
			}
			$this->db->order_by('id', 'DESC');
			return $this->db->get();

	}
}

?>