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
		$this->db->like('productname',$query);
		$query =$this->db->get('products');
		if($query->num_rows > 0)
		{
			 foreach($query->result_array() as $row)
			 {
				 $output[] =array
				 (
					   'productname'   =>$row["productname"],
					   'image'         =>$row["image"],         
              
				 );

			 }
			 echo json_encode($output);

		}else
		{
			echo "<script>
			alert('No Data Found');
			
			</script>";
		}

	}
}

?>