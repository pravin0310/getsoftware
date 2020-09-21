<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Shopping_cart extends CI_Controller {
 
 function index()
 {
  $this->load->model("shopping_cart_model");
  $data["product"] = $this->shopping_cart_model->fetch_all();
  $this->load->view("shopping_cart", $data);
 }

 function add()
 {
        $this->load->library("cart");

       $data=array(
                'id'      => $_POST['product_id'],
                'qty'     => $_POST['product_quantity'],
                'price'   => $_POST['product_price'],
                'name'    => $_POST['product_name']
        );
        // Inesrting Items into Cart

        $this->cart->insert($data); //return rowid 
        // $data=$this->cart->total_items();
        // echo json_encode($data);
        echo $this->view();
        
 }
function shopping_load()
{
    echo $this->view();
}
 function load()
 {
    
    //  echo $this->view();
     echo $this->cart_view();  
 }

 function qty_change()
 {
    $this->load->library("cart");       
    if($_POST["action"] == "quantity_change")
    {
            foreach($this->cart->contents() as $keys => $values)  
           {  
                if($this->cart->contents()[$keys]['rowid'] == $_POST["product_id"])  
                {  
                     $query=$this->cart->contents()[$keys]['qty'] = $_POST["quantity"];  
                }  
           }
           // $data=$this->cart->update($query);
           // echo $this->view();
           echo json_encode($query);
           // $items(array)   
    }
 }

 function search()
 {
     $search= $_POST['search'];
     // echo json_encode ($search);
     // echo json_encode ($search);
     $this->load->model('welcomem');
     $query = $this->welcomem->livefetch($search);
     echo json_encode ($query);
 }

 function remove()
 {
  $this->load->library("cart");
  $row_id = $_POST["product_id"];
  $data = array(
   'rowid'  => $row_id,
   'qty'  => 0
  );
  $this->cart->update($data);
  echo $this->view();
 }

 function clear()
 {
     $this->load->library("cart");
     $this->cart->destroy();
     echo $this->view();
 }
 
 function view()
 {
             $this->load->library("cart");
       
        $output = '';
        $output .= '
        <h3>Shopping Cart</h3><br />
        <div class="table-responsive">
         <div align="right">
          <button type="button" id="clear_cart" class="btn btn-warning">Clear Cart</button>
         </div>
         <br />
         <table class="table table-bordered" id="cart_table" style="color:white;">
          <tr>
           <th width="40%">Name</th>
           <th width="15%">Quantity</th>
           <th width="15%">Price</th>
           <th width="15%">Total</th>
           <th width="15%">Action</th>
          </tr>

        ';
        $count = 0;
        foreach($this->cart->contents() as $items)
        {
         $count++;
         $output .= '
         <tr> 
          <td>'.$items["name"].'</td>
          <td>'.$items["qty"].'</td>
          <td>'.$items["price"].'</td>
          <td>'.$items["subtotal"].'</td>
          <td><button type="button" name="remove" class="btn btn-danger btn-xs remove_inventory" id="'.$items["rowid"].'">Remove</button></td>
         </tr>
         ';
        }
        $output .= '
         <tr>
          <td colspan="4" align="right">Total</td>
          <td>'.$this->cart->total().'</td>
          <td>'.$this->cart->total_items().'</td>
         </tr>
        </table>

        </div>
        ';
        
        $output=$this->cart->total_items();
        // if($count == 0)
        // {
        //  $output .= '<h3 align="center">0</h3>';
        // }
        return $output;
        // return $message;
    } 
    
    function cart_view()
    {
        $this->load->library("cart");
       
        $output = '';
        $output .= '
        <h3 id="shopping_table">Shopping Cart</h3><br />
        <div class="table-responsive">
         
         <br />
         <table class="table" id="cart_table" style="color:white;">
          <tr>
           <th width="40%">Name</th>
           <th width="15%">Quantity</th>
           <th width="15%">Price</th>
           <th width="15%">Total</th>
           <th width="15%">Action</th>
          </tr>

        ';
        $count = 0;
        foreach($this->cart->contents() as $items)
        {
         $count++;
         $output .= '
         <tr> 
          <td>'.$items["name"].'</td>
          <td>'.$items["qty"].'</td>
          <td>'.$items["price"].'</td>
          <td>'.$items["subtotal"].'</td>
          <td><button type="button" name="remove" class="btn btn-danger delete" id="'.$items["rowid"].'">Remove</button></td>
         </tr>
         ';
        }
        $output .= '
         
        <tr>  
            <td colspan="3" align="right">Total</td>  
            <td align="right">$'.$this->cart->total().'</td>  
            <td></td>  
        </tr>  
        <tr>  
            <td colspan="5" align="center" >  
                    
                   
                <form method="post" action="cart.php">
                <a style="margin-left: 60%;" href="'.base_url('welcome').'"" class="btn btn-success">Continue Shopping</a>
                    <input  type="submit" name="place_order" class="btn btn-warning" value="Proceed To Checkout" />  
                </form>  
            </td>  
        </tr>  
        </table>

        </div>
        ';
        
        // // $output=$this->cart->total_items();
        // if($count == 0)
        // {
        //  $output = '<h3 align="center">Cart is Empty</h3>';
        // }
        return $output;
        // return $message;
    }
     
 }
?>