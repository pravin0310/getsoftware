<?php 


/**
 * 
 */
class Promo extends CI_Controller
{
	
	public function __construct()
    {
		 parent::__construct();
			 if($this->session->userdata(['user_role']!=10))
			{
			redirect('admin');
			}

			 $this->load->model(array(
            'promo_model'
           
        )); 

			
			
	}

	public function index()
	{
		    $data['value']=$this->promo_model->fetch();
			$this->load->view('header',$data);
			$this->load->view('promo',$data);
			$this->load->view('footer',$data);


	}

	public function add($id=null)
	{
		$output='';
		$message='';
      		
				$data=array(

                    'promo_name' =>$this->input->post('product_Name'),
                    'amount' =>number_format($this->input->post('amount'),2),
					'status' =>$this->input->post('status'),

				);
				$query=$this->promo_model->create($data);

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
		
		$output=$this->promo_model->userdata($id);
		
		echo json_encode($output);
	} 

	public function update()
	{
		$output='';
		$message='';
      		
				$data=array(

                    'id' =>$this->input->post('id'),
                    'promo_name' =>$this->input->post('promo_name'),
                    'amount' =>number_format($this->input->post('amount'),2),
					'status' =>$this->input->post('status'),

				);
				$query=$this->promo_model->update($data);

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
		$query=$this->promo_model->delete($id);
		if($query==true)
		{
			$message="Deleted";
			
		}
		else
		{
			$message="Un Delete";
			
		}	

		redirect('promo/index');
		
	}
	
}






?>