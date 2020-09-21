<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function __construct()
    {
     parent::__construct();
     $this->load->library('session');
       if($this->session->userdata(['user_role']!=10))
      {
      redirect('admin');
      }
    $this->load->model(array(
    'indexc'

    )); 
      
  }
	
	public function index()
	{
        $data['antivirus']=$this->indexc->fetch_a();
        $data['products']=$this->indexc->fetch();
        $this->load->view('welcome_message',$data);
        $this->load->view('footer',$data);
   
	}
  public 	function livesearch()
	{
		$this->load->model('welcomem');
	    $data=$this->welcomem->livefetch($this->uri->segment(3));
        return $data;

	}
	 public  function cart()
	{
        		session_start();

        if(isset($_POST["action"]))
        {
        if($_POST["action"] == "add")
        {
        if(isset($_SESSION["shopping_cart"]))
        {
        $is_available = 0;
        foreach($_SESSION["shopping_cart"] as $keys => $values)
        {
        if($_SESSION["shopping_cart"][$keys]['id'] == $_POST["id"])
        {
        $is_available++;
        $_SESSION["shopping_cart"][$keys]['quantity'] = $_SESSION["shopping_cart"][$keys]['quantity'] + $_POST["quantity"];
        }
        }
        if($is_available == 0)
        {
        $item_array = array(
        'id'               =>     $_POST["id"],  
        'name'             =>     $_POST["name"],  
        'amount'            =>     $_POST["amount"],  
        'quantity'         =>     $_POST["quantity"]
        );
        $_SESSION["shopping_cart"][] = $item_array;
        }
        }
        else
        {
        $item_array = array(
        'id'               =>     $_POST["id"],  
        'name'             =>     $_POST["name"],  
        'amount'            =>     $_POST["amount"],  
        'quantity'         =>     $_POST["quantity"]
        );
        $_SESSION["shopping_cart"][] = $item_array;
        }
        }
        }
	}
	
}
