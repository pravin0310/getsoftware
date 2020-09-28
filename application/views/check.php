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

    <!-- js -->
    <script src="<?php echo base_url('js/custom.js')?>"></script>
    <!-- End js -->

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

         <div class="cart-button">
        <button class="tabcontent" class="tablink"><i class="fa fa-cart-plus"> Cart <p class="cart_count"></p></i></button> 

        <div class="cart-dropdown">
        Cart dropdown content 
        <br>
        <a href="<?php base_url() ?>cart">GO TO CART</a>
        </div>
        </div>

          
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
   <section>

    <div class="container_fluid" style="padding-top: 2rem;">

          <div style="color: white;"><?php if(!empty($title)) $title ?></div>

          <div id="cart_table">
          <table class="table table-bordered">
                <thead>
                <tr>
                    <th>DESCRIPTION</th>
                    <th>AMOUNT</th>
                    <th>TOTAL</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>Help Desk/Any Desk or Team Viewer</td>
                    <td><?php echo number_format('50',2) ?></td>
                    <td><?php echo number_format('50',2) ?></td>
                </tr>
                <tr>
                    <td>Total Cart Amount</td>
                    <td><?php echo number_format(($this->cart->total()),2) ?></td>
                    <td><?php echo number_format(($this->cart->total()),2) ?></td>
                </tr>
                <tr>
                    <td for="promo_code">Promo Code</td>
                    <td>
                        <input type="text" class="browser-default navinput" id="coupon_code" placeholder="Apply Promocode" name="coupon_code">
                        <b><span id="message" style="color:green;"></span></b> 
                    </td>
                    <td><button id="apply" class="btn btn-default">Apply</button></td>
                </tr>
                <tr>
                    <td></td>
                    <td>Total</td>
                    <td><?php echo number_format(($this->cart->total())+50.00,2) ?></td>
                </tr>
                <tr>  
            <td colspan="5" align="center" >  
               
                <a style="margin-left: 60%;" href="<?php base_url('') ?>cart/home" class="btn btn-success">Continue Shopping</a>
                <a  href="<?php base_url() ?>../payment" class="btn btn-success">Proceed To Checkout</a>
               
            </td>  
        </tr>  
                <tbody>
         </table>
          
          </div>



    </div>

   

            <!-- End cart Details -->

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

<!-- cart Details -->

<div id="cart" class="tab-pane fade">  
                          <div class="table-responsive" id="order_table">  
                               
                          </div>  
                     </div>

            <!-- End cart Details -->


       

      </div>  <!--  Main class End -->
    

    <!-- // Project Ends HERE -->

     <script>
    $(document).ready(function(){
            //  Fetch data
              fetchUser();  
              function fetchUser()  
              {  
              var action = "select";  
              $.ajax({  
              url : "<?php base_url() ?>Shopping_cart/load",  
              method:"POST",  
              data:{action:action},  
              success:function(data){  
                $('#cart_table').html(data);
                // $('.cart_count').text(data); 
              }  
              });  
              }  

              fetchUser_cart();  
              function fetchUser_cart()  
              {  
              var action = "select";  
              $.ajax({  
              url : "<?php base_url() ?>Shopping_cart/shopping_load",  
              method:"POST",  
              data:{action:action},  
              success:function(data){  
                $('.cart_count').text(data); 
              }  
              });  
              }  
         
          $(document).on('click', '.delete', function(){  
            var product_id = $(this).attr("id");  
            var action = "remove";  
            if(confirm("Are you sure you want to remove this product?"))  
            {  
                $.ajax({  
                url:"<?php base_url() ?>Shopping_cart/remove",  
                method:"POST", 
                data:{product_id:product_id, action:action},  
                success:function(data){
                  fetchUser_cart();
                  fetchUser(); 
                  alert("Removed Successfully");  
                  $('#order_table').html(data);  
                // $('.cart_count').text(data);  
                }  
                });  
            }  
            else  
            {  
            return false;  
            }  
            });

            $(document).on('click', '.remove', function(){    
            if(confirm("Are you sure you want to remove this product?"))  
            {  
                $.ajax({  
                url:"<?php base_url() ?>Shopping_cart/remove",  
                method:"POST", 
                success:function(data){
                  fetchUser_cart();
                  fetchUser(); 
                  alert("Cart Deleted Successfully");  
                  $('#order_table').html(data);  
                 
                }  
                });  
            }  
            else  
            {  
            return false;  
            }  
            });
            $("#apply").click(function(){
                    if($('#promo_code').val()!=''){
                      $.ajax({
                            type: "POST",
                            url: "<?php base_url() ?>check/get_coupen",
                            data:{
                              coupon_code: $('#coupon_code').val()
                            },
                            dataType:"json",
                            success: function(dataResult){
                              // var dataResult = JSON.parse(dataResult);
                              if(dataResult.statusCode==200){
                               
                                // var after_apply=$('#total_price').val()-dataResult.value;
                              console.log(dataResult.value);
                                // $('#total_price').val(after_apply);
                                // $('#apply').hide();
                                // $('#edit').show();
                                // $('#message').html("Promocode applied successfully !");
                                alert('Promocode applied successfully !');
                                
                              }
                              else if(dataResult.statusCode==201){
                                // $('#message').html("Invalid promocode !");
                                alert("Invalid promocode !");
                              }
                            }
                      });
                    }
                    else{
                      // $('#message').html("Promocode can not be blank .Enter a Valid Promocode !");
                      alert("Promocode can not be blank .Enter a Valid Promocode !");
                    }
          	});
   });  
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
