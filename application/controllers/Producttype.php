<?php 


/**
 * 
 */
class Producttype extends CI_Controller
{
	
	public function __construct()
    {
		 parent::__construct();
			 if($this->session->userdata(['user_role']!=10))
			{
			redirect('admin');
			}

			 $this->load->model(array(
            'producttype_model'
           
        )); 

			
			
	}

	public function index()
	{
		 $data['value']=$this->producttype_model->fetch();
			$this->load->view('header',$data);
			$this->load->view('producttype',$data);
			$this->load->view('footer',$data);


	}

	public function add($id=null)
	{
		$output='';
		$message='';
      		
				$data=array(

					'product_Name' =>$this->input->post('product_Name'),
					'status' =>$this->input->post('status'),

				);
				$query=$this->producttype_model->create($data);

				if($query==1)
				{
					$message= "  Create succesfully ";
				}
				else
				{
					$message=" Create un succesfully ";
				}

				 $output = '<label class="text-success">' . $message . '</label>'; 
	
	 
   


		echo json_encode($output);

	}

	public function user_data()
	{
		
		
		$id=$_POST['id'];
		
		$output=$this->producttype_model->userdata($id);
		
		echo json_encode($output);
	} 

	public function update()
	{
		$output='';
		$message='';
      		
				$data=array(

                    'id' =>$this->input->post('id'),
					'product_Name' =>$this->input->post('product_Name'),
					'status' =>$this->input->post('status'),

				);
				$query=$this->producttype_model->update($data);

				if($query==1)
				{
					$message= "  Update succesfully ";
				}
				else
				{
					$message=" Update un succesfully ";
				}

				 $output = '<label class="text-success">' . $message . '</label>'; 
	
	 
   


		echo json_encode($output);

	}
	public function delete()
	{
		$id=$this->uri->segment(3);
		$query=$this->producttype_model->delete($id);
		if($query==true)
		{
			$message="Deleted";
			
		}
		else
		{
			$message="Un Delete";
			
		}	

		redirect('producttype/index');
		
	}
	
}






?>