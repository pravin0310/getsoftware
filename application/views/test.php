<div class="container">
   <br />
   <h3 align="center">PHP Ajax Shopping Cart by using Bootstrap Popover</h3>
   <br />
   <nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
     <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
      <span class="sr-only">Menu</span>
      <span class="glyphicon glyphicon-menu-hamburger"></span>
      </button>
      <a class="navbar-brand" href="/">Webslesson</a>
     </div>
     
     <div id="navbar-cart" class="navbar-collapse collapse">
      <ul class="nav navbar-nav">
       <li>
        <a id="cart-popover" class="btn" data-placement="bottom" title="Shopping Cart">
         <span class="glyphicon glyphicon-shopping-cart"></span>
         <span class="badge"></span>
         <span class="total_price">$ 0.00</span>
        </a>
       </li>
      </ul>
     </div>
     <div class="glider ">
        
     
                <?php foreach ($products as $value){ ?>
                <div class="card">
                    
                    <img class="cardImg"  src="<?php echo base_url('products/'. $value->image )?>" alt="Avatar" style="width:250px" />
                    <div class="cardcontainer">
                        <h6><b><?php echo $value->name ?></b></h6>
                        <input type="text" name="quantity" class="form-control quantity" id="'.$value->quantity.'" /><br />
                     <button type="button" name="add_cart" class="btn btn-success add_cart" data-name="'.$value->name.'" data-amount="'.$value->amount.'" data-id="'.$value->id.'" />Add to Cart</button>
                    </div>
               
                </div>

            <?php } ?>

              </div>
    </div>
   </nav>
   <div id="popover_content_wrapper" style="display: none">
    <span id="cart_details"></span>
    <div align="right">
     <a href="#" class="btn btn-primary" id="check_out_cart">
     <span class="glyphicon glyphicon-shopping-cart"></span> Check out
     </a>
     <a href="#" class="btn btn-default" id="clear_cart">
     <span class="glyphicon glyphicon-trash"></span> Clear
     </a>
    </div>
   </div>

   <div id="display_item">


   </div>
   
  </div>
  <script type="text/javascript">
    $(document).ready(function(){

load_cart_data();

// function load_cart_data()
// {
//   $.ajax({
//    url:"<?php echo base_url() ?>welcome/index",
//    method:"POST",
//    dataType:"json",
//    success:function(data)
//    {
//     $('#cart_details').html(data.name);
//     $('.total_price').text(data.amount);
//     $('.badge').text(data.quantity);
//    }
//   });
// }

$(document).on('click', '.add_to_cart', function(){
  var product_id = $(this).attr("id");
  var product_name = $('#name'+product_id+'').val();
  var product_price = $('#price'+product_id+'').val();
  var product_quantity = $('#quantity'+product_id).val();
  var action = "add";
  if(product_quantity > 0)
  {
   $.ajax({
    url:"action.php",
    method:"POST",
    data:{product_id:product_id, product_name:product_name, product_price:product_price, product_quantity:product_quantity, action:action},
    success:function(data)
    {
     load_cart_data();
     alert("Item has been Added into Cart");
    }
   });
  }
  else
  {
   alert("lease Enter Number of Quantity");
  }
 });

 $(document).on('click', '.delete', function(){
  var product_id = $(this).attr("id");
  var action = 'remove';
  if(confirm("Are you sure you want to remove this product?"))
  {
   $.ajax({
    url:"action.php",
    method:"POST",
    data:{product_id:product_id, action:action},
    success:function()
    {
     load_cart_data();
     $('#cart-popover').popover('hide');
     alert("Item has been removed from Cart");
    }
   })
  }
  else
  {
   return false;
  }
 });

 $(document).on('click', '#clear_cart', function(){
  var action = 'empty';
  $.ajax({
   url:"action.php",
   method:"POST",
   data:{action:action},
   success:function()
   {
    load_cart_data();
    $('#cart-popover').popover('hide');
    alert("Your Cart has been clear");
   }
  });
 });
});
  </script>