<!DOCTYPE html>
<html lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0" />
  <title>GETSOFTWAREKEYS</title>

  <!-- CSS  -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-3-typeahead/4.0.2/bootstrap3-typeahead.min.js"></script> -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-typeahead/2.11.0/jquery.typeahead.min.js"></script>
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
  <link href="<?php echo base_url('css/materialize.css'); ?>" type="text/css" rel="stylesheet" media="screen,projection" />

  <!-- <link rel="stylesheet" type="text/css" href="./glider.min.css"> -->

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/glider-js@1/glider.min.css">

  <link href="<?php echo base_url('css/style.css') ?>" type="text/css" rel="stylesheet" media="screen,projection" />

  <!-- // CSS  -->



  <!-- Fonts  -->

  <link href="https://fonts.googleapis.com/css2?family=Tangerine:wght@400;700&display=swap" rel="stylesheet" />
  <link href="https://fonts.googleapis.com/css2?family=Jost:wght@400;500;600&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" integrity="sha256-h20CPZ0QyXlBuAw7A+KluUYx/3pK+c7lYEpqLTlxjYQ=" crossorigin="anonymous" />

  <!-- Font Awesome Cdn -->

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css" />
</head>
<style type="text/css">
  #cart_table tr th {
    color: white;
  }
</style>

<body>
  <!-- Project starts HERE -->

  <!-- navBar  -->

  <div class="main">
    <!-- <div class="mainbar">
      <p style="flex-grow: 1;" class="mainmail">
        <span> <i class="far fa-envelope"></i> </span>
        SUPPORT@GETSOFTWAREKEYS.COM
      </p>

    </div> -->

    <nav>


      <div class="navFlexContainer">
      <h5 class="elementor-heading-title elementor-size-default eael-heading-content" id="2-eael-table-of-content">SOFTWARE KEYS</h5>
        <!-- <h5>
            logo HERE
          </h5> -->
        <!-- <div class="frmSearch">
        <input type="text" id="search-box" placeholder="Country Name" />
        
        </div> -->

        <!-- <img style="padding-left: 10px;" height="50px" width="100px" src="./images/logo.png" alt=""> -->
        <div class="searchContainer">
          <input type="text" name="country" id="country" class="form-control input-lg" autocomplete="off" placeholder="Type Country Name" />

          <!-- <input class="browser-default navinput" type="text" id="search-box" placeholder="Country Name" /> -->
          <i class="fas fa-search"></i>
          <div id="suggesstion-box"></div>

        </div>



        <div class="nav-btnwrapper">

          <div class="btn-container">
            <button><a href="#os">DEALS</a></button>
            <button><a href="#other">OTHERS</a></button>
            <button><a href="#anvirus">ANTIVIRUS</a></button>
            <button><a href="#office">OFFICE</a</button> </div> </div> <!-- cart Count -->
                <!--?php if($this->cart->total_items()) { echo $this->cart->total_items(); } else { echo '0';}?-->
                <div class="cart-button">
                <a href="<?php base_url() ?>cart"> <button ><i class="fa fa-cart-plus"> Cart <p class="cart_count"></p></i></button></a>

                  <div class="cart-dropdown">
                    <!-- Cart dropdown content -->
                    <br>
                    <!-- GO TO CART -->
                  </div>
                </div>


                <!-- End Count -->

                <a href="#" data-target="slide-out" class="sidenav-trigger show-on-large"><i class="material-icons">menu</i></a>

          </div>




        </div>
        <!-- navbar content here  -->

        <ul id="slide-out" class="sidenav">
          <li>
            <div class="user-view">
              <div class="background">
                <img src="images/cover.jpg" />
              </div>
              <a href="#user"><img class="circle" src="images/prof.jpg  " /></a>
              <a href="#name"><span class="white-text name">GetSoftwareKeys.com</span></a>
              <a href="#email"><span class="white-text email">mailHERe</span></a>
            </div>
          </li>
          <li>
            <a href="#">Deals
            </a>
          </li>
          <li>
            <a class="waves-effect" href="#">Windows</a>
          </li>
          <li>
            <a class="waves-effect" href="#">Antivirus</a>
          </li>
          <li>
            <a class="waves-effect" href="#">office</a>
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

        <div class="row ">


          <div class="col l12 s12 m12 ">

            <div class="searchContainer2">
              <input type="text" name="search" id="search" placeholder="Search..." />
              <i class="fas fa-search smlscrnsearchicon"></i>
              <ul id="finalResult"></ul>
            </div>

          </div>

        </div>

      </div>

    </section>

    <!-- // end OF SMALL SCRENN INPUT BOX -->




    <p id="os" class="bestSelHeading">OPERATING SYSTEMS</p>


    <section style="padding-bottom: 40px; height: 70%;" class="bestsellers">


      <div class="glider-contain multiple">



        <button class="glider-prev">

          <i class="fa fa-chevron-left"></i>

        </button>

        <div class="glider ">


          <?php foreach ($products as $value) { ?>
            <div class="card">

              <img class="cardImg" src="<?php echo base_url('products/' . $value['image']) ?>" alt="Avatar" style="width:250px" />
              <div class="cardcontainer">
                <h6><b><?php echo $value['name'] ?></b></h6>
                <h6><b><?php echo $value['amount'] ?></b></h6>

                <input type="hidden" name="quantity" id="quantity<?php echo $value["id"]; ?>" class="form-control" value="1" />
                <input type="hidden" name="hidden_name" id="name<?php echo $value["id"]; ?>" value="<?php echo $value["name"]; ?>" />
                <input type="hidden" name="hidden_price" id="price<?php echo $value["id"]; ?>" value="<?php echo $value["amount"]; ?>" />
                <input type="button" name="add_to_cart" id="<?php echo $value["id"]; ?>" style="margin-top:5px;" class="btn btn-warning form-control add_to_cart" value="Add to Cart" />
                <!-- <input type="button" name="buy" id="<?php echo $value["id"]; ?>" style="margin-top:5px;" class="btn btn-warning form-control add_to_cart" value="BUY" /> -->
                <!-- <a  href="<?php echo base_url('checkout/'.$value['id']) ?>">Purchase</a> -->
                <a href="<?php echo base_url('checkout/purchase/'.$value['id']); ?>">Purchase</a>
                 
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


      <p id="anvirus" class="bestSelHeading">ANTIVIRUS</p>

      <section style="padding-bottom: 80px; height: 80%;" class="bestsellers">

        <div class="glider-contain multiple">



          <button class="glider-prev scndprev">

            <i class="fa fa-chevron-left"></i>

          </button>

          <div class="glider secondndglid">

            <?php foreach ($antivirus as $value) { ?>
              <div class="card">

                <img class="cardImg" src="<?php echo base_url('products/' . $value['image']) ?>" alt="Avatar" style="width:250px" />
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


      <p id="office" class="bestSelHeading">OFFICE</p>

      <section style="padding-bottom: 80px; height: 80%; margin-bottom: 80px;" class="bestsellers">



        <div class="glider-contain multiple">



          <button class="glider-prev tdprev">

            <i class="fa fa-chevron-left"></i>

          </button>

          <div class="glider tdglid">
            <?php foreach ($products as $value) { ?>
              <div class="card">

                <img class="cardImg" src="<?php echo base_url('products/' . $value['image']) ?>" alt="Avatar" style="width:250px" />
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


      <p id="other" class="bestSelHeading">OTHERS</p>

      <section style=" height: 80%; " class="bestsellers">



        <div class="glider-contain multiple">



          <button class="glider-prev frthprev">

            <i class="fa fa-chevron-left"></i>

          </button>

          <div class="glider frthglid">
            <?php foreach ($products as $value) { ?>
              <div class="card">

                <img class="cardImg" src="<?php echo base_url('products/' . $value['image']) ?>" alt="Avatar" style="width:250px" />
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

                <!-- <p><i class="far fa-envelope firstBarIcon"></i> <span class="firstBarbigertxt">INSTANT</span> EMAIL DELIVERY</p> -->

              </div>
              <div class="col s12 m4 l4">

                <!-- <p><i class="far fa-clock firstBarIcon"></i> <span class="firstBarbigertxt">24/7</span> CUSTOMER SUPPORT</p> -->

              </div>
              <div class="col s12 m4 l4">

                <!-- <p><i class="fas fa-dollar-sign firstBarIcon"></i> <span class="firstBarbigertxt"> 14 DAYS</span> REFUND & REPLACEMENT</p> -->

              </div>

            </div>

          </div>

        </section>



    </section>




    <section class="thirdBar">



      <!-- <div class="container-fluid">

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

      </div> -->


    </section>


    <section class="fourthBar">

      <div class="container-fluid">


        <!-- <div class="row supportMail">

          <div class="col ">

            <i class="fas fa-headphones-alt"></i>


          </div>

          <div class="col">

            <!-- <p>Got questions? Contact us 24/7 !</p>
            <p>support@getsoftwarekeys.com</p> -->


          </div>


        </div> -->

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





  </div> <!--  Main class End -->


  <!-- // Project Ends HERE -->




  <script>
    $(document).ready(function() {
      //  Fetch data
      fetchUser();

      function fetchUser() {
        var action = "select";
        $.ajax({
          url: "<?php base_url() ?>Shopping_cart/shopping_load",
          method: "POST",
          data: {
            action: action
          },
          success: function(data) {
            $('.cart_count').text(data);
          }
        });
      }
      $('.add_to_cart').click(function() {

        var product_id = $(this).attr("id");
        var product_name = $('#name' + product_id).val();
        var product_price = $('#price' + product_id).val();
        var product_quantity = $('#quantity' + product_id).val();
        var action = "add";
        if (product_quantity > 0) {
          $.ajax({
            url: "<?php base_url() ?>Shopping_cart/add",
            method: "POST",
            data: {
              product_id: product_id,
              product_name: product_name,
              product_price: product_price,
              product_quantity: product_quantity,
              action: action
            },
            success: function(data) {
              fetchUser();
              alert("Product has been Added into Cart");
              $('#order_table').html(data);


            }
          });
        } else {
          alert("Please Enter Number of Quantity")
        }


      });
      // AJAX call for autocomplete 
      $(document).ready(function() {
        $("#search-box").keyup(function() {
          $.ajax({
            type: "POST",
            url: "<?php base_url() ?>Shopping_cart/search",
            data: 'keyword=' + $(this).val(),
            beforeSend: function() {
              $("#search-box").css("background", "#FFF url(LoaderIcon.gif) no-repeat 165px");
            },
            success: function(data) {
              $("#suggesstion-box").show();
              $("#suggesstion-box").html(data);
              $("#search-box").css("background", "#FFF");
            }
          });
        });
      });
      $('#country').typeahead({
        source: function(query, result) {
          $.ajax({
            url: "<?php echo base_url(); ?>Shopping_cart/search/",
            method: "POST",
            data: {
              query: query
            },
            dataType: "json",
            success: function(data) {
              result($.map(data, function(item) {
                return item;
              }));
            }
          })
        }
      });


      $(document).on('keyup', '.quantity_change', function() {
        var product_id = $(this).data("product_id");
        var quantity = $(this).val();
        var action = "quantity_change";
        if (quantity != '') {
          $.ajax({
            url: "<?php base_url() ?>Shopping_cart/qty_change",
            method: "POST",
            dataType: "json",
            data: {
              product_id: product_id,
              quantity: quantity,
              action: action
            },
            success: function(data) {
              console.log(data);
              $('#order_table').html(data.order_table);
            }
          });
        }
      });

      $(".cart-button").one("mouseover", function() {
        $(".cart-dropdown").addClass('permahover');
      });
      $(".cart-button").one("mouseleave", function() {
        $(".cart-dropdown").addClass('permahover');
        $(".cart-dropdown").hide();
      });

      $('#search_data').autocomplete({
        source: "<?php base_url() ?>Shopping_cart/search",
        minLength: 1,
        select: function(event, ui) {
          $('#search_data').val(ui.item.value);
        }
      }).data('ui-autocomplete')._renderItem = function(ul, item) {
        return $("<li class='ui-autocomplete-row'></li>")
          .data("item.autocomplete", item)
          .append(item.label)
          .appendTo(ul);
      };

      function ajaxSearch() {
        var input_data = $('#search_data').val();

        if (input_data.length === 0) {
          $('#suggestions').hide();
        } else {

          var post_data = {
            'search_data': input_data,
            '<?php echo $this->security->get_csrf_token_name(); ?>': '<?php echo $this->security->get_csrf_hash(); ?>'
          };

          $.ajax({
            type: "POST",
            url: "<?php echo base_url(); ?>Shopping_cart/search/",
            data: post_data,
            success: function(data) {
              // return success
              if (data.length > 0) {
                // console.log(data);
                $('#suggestions').show();
                $('#autoSuggestionsList').addClass('auto_list');
                $('#autoSuggestionsList').html(data);
              }
            }
          });

        }
      }


    });
  </script>

  <!--  Scripts-->
  <!-- js -->
  <script src="<?php echo base_url('js/custom.js') ?>"></script>
  <!-- End js -->
  <!-- <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script> -->
  <script type="text/javascript" language="javascript" src="https://www.technicalkeeda.com/js/javascripts/plugin/jquery.js"></script>
  <script type="text/javascript" src="https://www.technicalkeeda.com/js/javascripts/plugin/json2.js"></script>
  <script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
  <script src="<?php echo base_url('js/materialize.js') ?>"></script>
  <!-- <script src="./glider.min.js"></script> -->
  <script src="https://cdn.jsdelivr.net/npm/glider-js@1/glider.min.js"></script>
  <script src="<?php echo base_url('js/init.js') ?>"></script>

</body>

</html>