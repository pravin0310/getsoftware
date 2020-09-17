<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * 
 */
class Products extends CI_Controller
{
	
	public function __construct()
    {
		  parent::__construct();
				
		 $this->load->helper('url', 'form');
			 if($this->session->userdata(['user_role']!=10))
			{
			redirect('admin');
			}

			 $this->load->model(array(
            'products_model'
           
        )); 
			
	}

	public function index()
	{
		  
		    $data['value']=$this->products_model->fetch_producttype();
			$this->load->view('header',$data);
			$this->load->view('products',$data);
			$this->load->view('footer',$data);


	}

	

	public function add($id=null)
	{
        if(isset($_POST['insert']))
        {
					    // add picture

						$this->form_validation->set_rules('name', 'name', 'required');
						$this->form_validation->set_rules('amount', 'amount', 'required');
						$this->form_validation->set_rules('discount', 'discount', 'required');
					   // $this->form_validation->set_rules('userfile', 'userfile', 'required');

				    if ($this->form_validation->run() === FALSE)
				    {
							$data['value']=$this->products_model->fetch_producttype();
							$this->load->view('header',$data);
							// $this->session->set_flashdata('exception','please_try_again');
							$this->load->view('products',$data);
							$this->load->view('footer',$data);
				    }
				    else
				    {    


								$config['upload_path'] = './products';
								$config['allowed_types'] = 'gif|jpg|png';
								$config['max_size'] = 2000;
								$config['max_width'] = 1500;
								$config['max_height'] = 1500;

								$this->load->library('upload', $config);

								if (!$this->upload->do_upload('userfile')) {
								$error = array('error' => $this->upload->display_errors());
								$data['value']=$this->products_model->fetch_producttype();
								$this->load->view('header',$data,$error);
								$this->load->view('products',$data,$error);
								$this->load->view('footer',$data,$error);

								// $this->load->view('files/upload_form', $error);
								} 
								else 
								{
									$uploadData = $this->upload->data();
									$picture = $uploadData['file_name'];
								$data = array(
									'name' =>$this->input->post('name'),
									'status' =>$this->input->post('status'),
									'quantity' =>$this->input->post('quantity'),
									'amount' =>$this->input->post('amount'),
									'discount' =>$this->input->post('discount'),
									'type' =>$this->input->post('type'),
									'image' => $uploadData['file_name'],
								);
			                     $insert_id=$this->products_model->create($data);
			                    
								$data['value']=$this->products_model->fetch_producttype();
								$this->load->view('header',$data);
								$this->load->view('products_view',$data);
								$this->load->view('footer',$data);
								}

						           $this->session->set_flashdata('message', 'save_successfully');
			           }
           }
           elseif (isset($_POST['update'])) {
           	
           		$this->form_validation->set_rules('name', 'name', 'required');
						$this->form_validation->set_rules('amount', 'amount', 'required');
						$this->form_validation->set_rules('discount', 'discount', 'required');
					   // $this->form_validation->set_rules('userfile', 'userfile', 'required');

				    if ($this->form_validation->run() === FALSE)
				    {
							$data['value']=$this->products_model->fetch_producttype();
							$this->load->view('header',$data);
							$this->session->set_flashdata('exception','please_try_again');
							$this->load->view('view_data',$data);
							$this->load->view('footer',$data);
				    }
				    else
				    {    


								$config['upload_path'] = './products';
								$config['allowed_types'] = 'gif|jpg|png';
								$config['max_size'] = 2000;
								$config['max_width'] = 1500;
								$config['max_height'] = 1500;

								$this->load->library('upload', $config);

								if (!$this->upload->do_upload('userfile')) {
								$error = array('error' => $this->upload->display_errors());
								$data['value']=$this->products_model->fetch_producttype();
								$this->load->view('header',$data,$error);
								$this->load->view('view_data',$data,$error);
								$this->load->view('footer',$data,$error);

								// $this->load->view('files/upload_form', $error);
								} 
								else 
								{
									$uploadData = $this->upload->data();
									$picture = $uploadData['file_name'];
								$data = array(
									'name' =>$this->input->post('name'),
									'status' =>$this->input->post('status'),
									'quantity' =>$this->input->post('quantity'),
									'amount' =>$this->input->post('amount'),
									'discount' =>$this->input->post('discount'),
									'type' =>$this->input->post('type'),
									'image' => $uploadData['file_name'],
								);
			                     $insert_id=$this->products_model->create($data);
			                    
								$data['value']=$this->products_model->fetch_producttype();
								$this->load->view('header',$data);
								$this->load->view('products_view',$data);
								$this->load->view('footer',$data);
								}

						           $this->session->set_flashdata('message', 'update_successfully');
			           }
           }
          

	}
     public function user_data($id)
	{

		 
			$data['value']=$this->products_model->fetch_producttype();
			$data['items']=$this->products_model->userdata($id);
			$this->load->view('header',$data,$id);
			$this->load->view('user_data',$data,$id);
			$this->load->view('footer',$data,$id);
          

	}

	public function view()
	{
		$data['products']=$this->products_model->fetch();
		$this->load->view('header',$data);
		$this->load->view('products_view',$data);
		$this->load->view('footer',$data);
	}
	 public function delete($id)
	{   

		$data['value']=$this->products_model->delete($id);
		$data['products']=$this->products_model->fetch();
		$this->session->set_flashdata('message', 'Delete successfully');
		$this->load->view('header',$data);
		$this->load->view('products_view',$data);
		$this->load->view('footer',$data);
	}

	
	
}






?>