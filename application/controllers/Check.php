<?php

class Check extends CI_Controller
{
    
    public function __construct() {        
        parent::__construct();
    }

    public function index()
    {
        $this->load->library("cart");
        $this->load->view('check');
    }
    

}

?>
