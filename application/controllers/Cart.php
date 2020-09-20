<?php

class Cart extends CI_Controller
{
    
    public function __construct() {        
        parent::__construct();
    }

    public function index()
    {
       $data['title'] ="Shopping cart";  
       $this->load->view("cart",$data);
    }

}

?>