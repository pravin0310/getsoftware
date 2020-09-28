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
    function get_coupen()
    {

        $coupon_code=$_POST['coupon_code'];
        $this->load->model('welcomem');

        $result = $this->welcomem->livefetch_code($coupon_code);
        if (mysqli_num_rows($result)>0){
            echo json_encode(array(
                        "statusCode"=>200,
                        // "promo_name"=>$row['promo_name'];
                        // "amount"=>$row['amount'];
                        // "status"=>$row['status'];
                        "value"=>$row['value'];
                    ));
        }
        else{
            echo json_encode(array("statusCode"=>201));
        }

    }
    
    

}

?>
