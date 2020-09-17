<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, maximum-scale=1.0"
    />
    <title>GETSOFTWAREKEYS</title>

    <!-- CSS  -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet"
    />
    <link
      href="<?php echo base_url('css/materialize.css');?>"
      type="text/css"
      rel="stylesheet"
      media="screen,projection"
    />

    <!-- <link rel="stylesheet" type="text/css" href="./glider.min.css"> -->

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/glider-js@1/glider.min.css">

    <link
      href="<?php echo base_url('css/style.css')?>"
      type="text/css"
      rel="stylesheet"
      media="screen,projection"
    />

    <!-- // CSS  -->

    <!-- Fonts  -->

    <link
      href="https://fonts.googleapis.com/css2?family=Tangerine:wght@400;700&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Jost:wght@400;500;600&display=swap"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
      integrity="sha256-h20CPZ0QyXlBuAw7A+KluUYx/3pK+c7lYEpqLTlxjYQ="
      crossorigin="anonymous"
    />

    <!-- Font Awesome Cdn -->

    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css"
    />
  </head>
  <style type="text/css">
    #cart_table tr th{
       color:white;
    }
  </style>

  <body>
    <!-- Project starts HERE -->

    <!-- navBar  -->

    <div class="main">
      <div class="mainbar">
        <p style="flex-grow: 1;" class="mainmail">
          <span> <i class="far fa-envelope"></i> </span>
          SUPPORT@GETSOFTWAREKEYS.COM
        </p>
       
      </div>

      <nav>

        
        <div class="navFlexContainer">
          <!-- <h5>
            logo HERE
          </h5> -->

          <img style="padding-left: 10px;" height="50px" width="100px" src="./images/logo.png" alt="">
          <div class="searchContainer">
          <input class="browser-default navinput" type="text" placeholder="Search..."/> 
          <i class="fas fa-search"></i>
          </div>
          <div class="nav-btnwrapper">

            <div class="btn-container">
            <button >DEALS</button>
            <button>WINDOWS</button>
            <button>ANTIVIRUS</button>
            <button>OFFICE</button>
            </div>
          </div>

       
        
         <!-- cart Count -->

          <a data-toggle="tab" href="#cart"><i class="fa fa-cart-plus"> Cart  <?php if($this->cart->total_items()) { echo $this->cart->total_items(); } else { echo '0';}?></i></a> 

          <!-- End Count -->
 
          <a
          href="#"
          data-target="slide-out"
          class="sidenav-trigger show-on-large"
          ><i class="material-icons">menu</i></a
        >

        </div>




        </div>
        <!-- navbar content here  -->

        <ul id="slide-out" class="sidenav">
          <li>
            <div class="user-view">
              <div  class="background">
                <img   src="images/cover.jpg" />
              </div>
              <a href="#user"><img class="circle" src="images/prof.jpg  " /></a>
              <a href="#name"><span class="white-text name">GetSoftwareKeys.com</span></a>
              <a href="#email"><span class="white-text email">mailHERe</span></a>
            </div>
          </li>
          <li>
            <a  href="#"
              >Deals
            </a>
          </li>
          <li>
            <a class="waves-effect"  href="#">Windows</a>
          </li>
          <li>
            <a class="waves-effect"  href="#">Antivirus</a>
          </li>
          <li>
            <a class="waves-effect"  href="#">office</a>
          </li>
          <!-- <li><div class="divider"></div></li>
          <li><a class="subheader">Subheader</a></li>
          <li><a class="waves-effect" href="#!">Third Link With Waves</a></li> -->
        </ul>

      
      </nav>

      <!-- End of NAV -->

      <!-- SMALL SCRENN INPUT BOX -->

   
      <section>

          <div class="container" style="padding-top: 2rem;">

            <div  class="row ">


              <div  class="col l12 s12 m12 ">

                <div  class="searchContainer2">
                  <input class="browser-default navinput" type="text" placeholder="Search..."/> 
                  <i class="fas fa-search smlscrnsearchicon"></i>
                </div>

              </div>

            </div>

          </div>

      </section>

<!-- // end OF SMALL SCRENN INPUT BOX -->

<!-- cart Details -->

                   <div id="cart" class="tab-pane fade">  
                          <div class="table-responsive" id="order_table">  
                               <table class="table table-bordered">  
                                    <tr>  
                                         <th width="40%">Product Name</th>  
                                         <th width="10%">Quantity</th>  
                                         <th width="20%">Price</th>  
                                         <th width="15%">Total</th>  
                                         <th width="5%">Action</th>  
                                    </tr>  
                                    <?php 
                                    $this->load->library("cart"); 
                                    if(!empty($this->cart))  
                                    {  
                                         $total = 0;  
                                         foreach($this->cart->contents() as $keys => $values)  
                                         {                                               
                                    ?>  
                                    <tr>  
                                         <td><?php echo $values["name"]; ?></td>  
                                         <td><input type="text" name="quantity[]" id="quantity<?php echo $values["rowid"]; ?>" value="<?php echo $values["qty"]; ?>" data-product_id="<?php echo $values["rowid"]; ?>" class="form-control quantity_change" /></td>  
                                         <td align="right">$ <?php echo $values["price"]; ?></td>  
                                         <td align="right">$ <?php echo number_format($values["qty"] * $values["price"], 2); ?></td>  
                                         <td><button name="delete" class="btn btn-danger btn-xs delete" id="<?php echo $values["rowid"]; ?>">Remove</button></td>  
                                    </tr>  
                                    <?php  
                                              $total = $total + ($values["qty"] * $values["price"]);  
                                         }  
                                    ?>  
                                    <tr>  
                                         <td colspan="3" align="right">Total</td>  
                                         <td align="right">$ <?php echo number_format($total, 2); ?></td>  
                                         <td></td>  
                                    </tr>  
                                    <tr>  
                                         <td colspan="5" align="center">  
                                              <form method="post" action="cart.php">  
                                                   <input type="submit" name="place_order" class="btn btn-warning" value="Place Order" />  
                                              </form>  
                                         </td>  
                                    </tr>  
                                    <?php  
                                    }  
                                    ?>  
                               </table>  
                          </div>  
                     </div>

            <!-- End cart Details -->


    <p class="bestSelHeading">OPERATING SYSTEMS</p>


      <section style="padding-bottom: 40px; height: 70%;" class="bestsellers">


              <div class="glider-contain multiple">

              

              <button class="glider-prev">

              <i class="fa fa-chevron-left"></i>

              </button>

              <div class="glider ">
        
     
                <?php foreach ($products as $value){ ?>
                <div class="card">
                    
                    <img class="cardImg"  src="<?php echo base_url('products/'. $value['image'] )?>" alt="Avatar" style="width:250px" />
                    <div class="cardcontainer">
                    <h6><b><?php echo $value['name'] ?></b></h6>
                    <h6><b><?php echo $value['amount'] ?></b></h6>

                    <input type="hidden" name="quantity" id="quantity<?php echo $value["id"]; ?>" class="form-control" value="1" />  
                    <input type="hidden" name="hidden_name" id="name<?php echo $value["id"]; ?>" value="<?php echo $value["name"]; ?>" />  
                    <input type="hidden" name="hidden_price" id="price<?php echo $value["id"]; ?>" value="<?php echo $value["amount"]; ?>" />  
                    <input type="button" name="add_to_cart" id="<?php echo $value["id"]; ?>" style="margin-top:5px;" class="btn btn-warning form-control add_to_cart" value="Add to Cart" /> 

                    </div>
               
                </div>

            <?php } ?>

              </div>
              <div id="dots" class="glider-dots"></div>

              <button class="glider-next">

                <i class="fa fa-chevron-right" aria-hidden="true"></i>
          
              </button>

              </div>

        <!-- second glider  -->

        
        <p class="bestSelHeading">ANTIVIRUS</p>   

    <section style="padding-bottom: 80px; height: 80%;" class="bestsellers"> 
    
      <div  class="glider-contain multiple">

      

      <button class="glider-prev scndprev">

      <i class="fa fa-chevron-left"></i>

      </button>

      <div class="glider secondndglid">

           <?php foreach ($products as $value){ ?>
                <div class="card">
                    
                    <img class="cardImg"  src="<?php echo base_url('products/'. $value['image'] )?>" alt="Avatar" style="width:250px" />
                    <div class="cardcontainer">
                    <h6><b><?php echo $value['name'] ?></b></h6>
                    <h6><b><?php echo $value['amount'] ?></b></h6>

                    <input type="hidden" name="quantity" id="quantity<?php echo $value["id"]; ?>" class="form-control" value="1" />  
                    <input type="hidden" name="hidden_name" id="name<?php echo $value["id"]; ?>" value="<?php echo $value["name"]; ?>" />  
                    <input type="hidden" name="hidden_price" id="price<?php echo $value["id"]; ?>" value="<?php echo $value["amount"]; ?>" />  
                    <input type="button" name="add_to_cart" id="<?php echo $value["id"]; ?>" style="margin-top:5px; " class="btn btn-warning form-control add_to_cart" value="Add to Cart" /> 

                    </div>
               
                </div>

            <?php } ?>
        

      </div>
      <div id="dotsscnd" class="glider-dots"></div>

      <button class="glider-next scndnxt">

        <i class="fa fa-chevron-right" aria-hidden="true"></i>
  
      </button>

        

      </div>

</section>


<!-- office Section -->


<p class="bestSelHeading">OFFICE</p>   

    <section style="padding-bottom: 80px; height: 80%; margin-bottom: 80px;" class="bestsellers"> 
    


      <div  class="glider-contain multiple">

      

      <button class="glider-prev tdprev">

      <i class="fa fa-chevron-left"></i>

      </button>

      <div class="glider tdglid">
           <?php foreach ($products as $value){ ?>
                <div class="card">
                    
                    <img class="cardImg"  src="<?php echo base_url('products/'. $value['image'] )?>" alt="Avatar" style="width:250px" />
                    <div class="cardcontainer">
                    <h6><b><?php echo $value['name'] ?></b></h6>
                    <h6><b><?php echo $value['amount'] ?></b></h6>

                    <input type="hidden" name="quantity" id="quantity<?php echo $value["id"]; ?>" class="form-control" value="1" />  
                    <input type="hidden" name="hidden_name" id="name<?php echo $value["id"]; ?>" value="<?php echo $value["name"]; ?>" />  
                    <input type="hidden" name="hidden_price" id="price<?php echo $value["id"]; ?>" value="<?php echo $value["amount"]; ?>" />  
                    <input type="button" name="add_to_cart" id="<?php echo $value["id"]; ?>" style="margin-top:5px;" class="btn btn-warning form-control add_to_cart" value="Add to Cart" /> 

                    </div>
               
                </div>

            <?php } ?>

      </div>
      <div id="dotstd" class="glider-dots"></div>

      <button class="glider-next tdnxt">

        <i class="fa fa-chevron-right" aria-hidden="true"></i>
  
      </button>

        

      </div>

</section>


<!-- others section -->


<p class="bestSelHeading">OTHERS</p>   

    <section style=" height: 80%; " class="bestsellers"> 
    


      <div  class="glider-contain multiple">

      

      <button class="glider-prev frthprev">

      <i class="fa fa-chevron-left"></i>

      </button>

      <div class="glider frthglid">
 <?php foreach ($products as $value){ ?>
                <div class="card">
                    
                    <img class="cardImg"  src="<?php echo base_url('products/'. $value['image'] )?>" alt="Avatar" style="width:250px" />
                    <div class="cardcontainer">
                    <h6><b><?php echo $value['name'] ?></b></h6>
                    <h6><b><?php echo $value['amount'] ?></b></h6>

                    <input type="hidden" name="quantity" id="quantity<?php echo $value["id"]; ?>" class="form-control" value="1" />  
                    <input type="hidden" name="hidden_name" id="name<?php echo $value["id"]; ?>" value="<?php echo $value["name"]; ?>" />  
                    <input type="hidden" name="hidden_price" id="price<?php echo $value["id"]; ?>" value="<?php echo $value["amount"]; ?>" />  
                    <input type="button" name="add_to_cart" id="<?php echo $value["id"]; ?>" style="margin-top:5px;" class="btn btn-warning form-control add_to_cart" value="Add to Cart" /> 

                    </div>
               
                </div>

            <?php } ?>

      </div>
      <div id="dotsfrth" class="glider-dots"></div>

      <button class="glider-next frthnxt">

        <i class="fa fa-chevron-right" aria-hidden="true"></i>
  
      </button>

        

      </div>

</section>
  
            

<!-- Footer -->


      <footer>

        <section class="firstBar">

        <div style="margin: 0 4rem;" class="container-fluid ">

          <div style="margin: 0;" class="row">

            <div class="col s12 m4 l4">

                <p><i class="far fa-envelope firstBarIcon"></i> <span class="firstBarbigertxt">INSTANT</span>  EMAIL DELIVERY</p>

            </div>
            <div class="col s12 m4 l4">

                <p ><i class="far fa-clock firstBarIcon"></i> <span class="firstBarbigertxt">24/7</span>  CUSTOMER SUPPORT</p>

            </div>
            <div class="col s12 m4 l4">

                <p ><i class="fas fa-dollar-sign firstBarIcon"></i> <span class="firstBarbigertxt"> 14 DAYS</span> REFUND & REPLACEMENT</p>

            </div>

          </div>

        </div>

      </section>



      </section>




      <section class="thirdBar">



        <div class="container-fluid">

            <div class="row">


                <div class="col s12 m6 l6">

                     logo HERE    

                </div>

                <div class="col s12 m2 l2 ">

                      <p>TERMS AND CONDITIONS</p>
                     

                </div>

                <div class="col s12 m2 l2">

                  <p>PRIVACY POLICY</p>
                  
                </div>
                <div class="col m2 l2">
                  <p> RETURN & REFUND POLICY</p>
                </div>


            </div>

        </div>


      </section>


      <section class="fourthBar">

        <div class="container-fluid">


          <div class="row supportMail">

                <div class="col ">

                  <i class="fas fa-headphones-alt"></i>
              

                </div>

                <div class="col" >

                  <p>Got questions? Contact us 24/7 !</p>
                  <p>support@getsoftwarekeys.com</p>


                </div>


          </div>

        </div>


      </section>


      <section class="socialMedia">

            <div class="row">

                  <div class="col socialMediaIconsWrapper">

                         

                           <a target="_blank" href="https://www.facebook.com/getsoftwarekeys"><i class="fab fa-facebook socialMediaIcons"></i></a> 
                           <a target="_blank" href="https://www.instagram.com/getsoftwarekeys"><i class="fab fa-instagram socialMediaIcons"></i></a> 
                           <a target="_blank" href="#"><i class="fab fa-twitter-square socialMediaIcons"></i></a> 

                  </div>

            </div>

           

      </section>


      </footer>




       

      </div>  <!--  Main class End -->
    

    <!-- // Project Ends HERE -->

     <script type="text/javascript">

      $(document).ready(function(){

        $('.add_to_cart').click(function(){

           var product_id = $(this).attr("id");  
           var product_name = $('#name'+product_id).val();  
           var product_price = $('#price'+product_id).val();  
           var product_quantity = $('#quantity'+product_id).val();  
           var action = "add";  
           if(product_quantity > 0)  
           {  
                $.ajax({  
                     url:"<?php base_url() ?>Shopping_cart/add",  
                     method:"POST",  
                     data:{  
                          product_id:product_id,   
                          product_name:product_name,   
                          product_price:product_price,   
                          product_quantity:product_quantity,   
                          action:action  
                     },  
                     success:function(data)  
                     {  
                         alert("Product has been Added into Cart");
                          $('#order_table').html(data.order_table);
                          $('.badge').text(data.cart_item);   
                         
                     }  
                });  
           }  
           else  
           {  
                alert("Please Enter Number of Quantity")  
           }  
     

        });

         $(document).on('keyup', '.quantity_change', function(){  
           var product_id = $(this).data("product_id");  
           var quantity = $(this).val();  
           var action = "quantity_change";  
           if(quantity != '')  
           {  
                $.ajax({  
                     url :"<?php base_url() ?>Shopping_cart/qty_change",  
                     method:"POST",  
                     dataType:"json",  
                     data:{product_id:product_id, quantity:quantity, action:action},  
                     success:function(data){  
                          console.log(data);
                          $('#order_table').html(data.order_table);  
                     }  
                });  
           }  
      });  

  });
             
      </script>

     <script>  
 // $(document).ready(function(){  
 //  $(document).on('click', '.add_to_cart', function(){
 //    console.log("iudshfsd");
 //      // $('.add_to_cart').click(function(){  
 //                // alert("hello");
 //           // var product_id = $(this).attr("id");  
 //           // var product_name = $('#name'+product_id).val();  
 //           // var product_price = $('#price'+product_id).val();  
 //           // var product_quantity = $('#quantity'+product_id).val();  
 //           // var action = "add";  
 //           // if(product_quantity > 0)  
 //           // {  
 //           //      $.ajax({  
 //           //           url:"<?php base_url() ?>shopping_cart/add",  
 //           //           method:"POST",  
 //           //           dataType:"json",  
 //           //           data:{  
 //           //                product_id:product_id,   
 //           //                product_name:product_name,   
 //           //                product_price:product_price,   
 //           //                product_quantity:product_quantity,   
 //           //                action:action  
 //           //           },  
 //           //           success:function(data)  
 //           //           {  

 //           //           alert(data);
 //           //                // $('#order_table').html(data.order_table);  
 //           //                // $('.badge').text(data.cart_item);  
 //           //                // alert("Product has been Added into Cart");  
 //           //           }  
 //           //      });  
 //           // }  
 //           // else  
 //           // {  
 //           //      alert("Please Enter Number of Quantity")  
 //           // }  
 //      }); 
 //       });   
 //      $(document).on('click', '.delete', function(){  
 //           var product_id = $(this).attr("id");  
 //           var action = "remove";  
 //           if(confirm("Are you sure you want to remove this product?"))  
 //           {  
 //                $.ajax({  
 //                     url:"action.php",  
 //                     method:"POST",  
 //                     dataType:"json",  
 //                     data:{product_id:product_id, action:action},  
 //                     success:function(data){  
 //                          $('#order_table').html(data.order_table);  
 //                          $('.badge').text(data.cart_item);  
 //                     }  
 //                });  
 //           }  
 //           else  
 //           {  
 //                return false;  
 //           }  
 //      });  
 //      $(document).on('keyup', '.quantity', function(){  
 //           var product_id = $(this).data("product_id");  
 //           var quantity = $(this).val();  
 //           var action = "quantity_change";  
 //           if(quantity != '')  
 //           {  
 //                $.ajax({  
 //                     url :"action.php",  
 //                     method:"POST",  
 //                     dataType:"json",  
 //                     data:{product_id:product_id, quantity:quantity, action:action},  
 //                     success:function(data){  
 //                          $('#order_table').html(data.order_table);  
 //                     }  
 //                });  
 //           }  
 //      });  

 </script>

    <!--  Scripts-->
    <!-- <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script> -->
    <script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
    <script src="<?php echo base_url('js/materialize.js')?>"></script>
    <!-- <script src="./glider.min.js"></script> -->
    <script src="https://cdn.jsdelivr.net/npm/glider-js@1/glider.min.js"></script>
    <script src="<?php echo base_url('js/init.js')?>"></script>

  </body>
</html>
