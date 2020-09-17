
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<head>
<title>MTL Computer Garden</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="dash/css/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="dash/css/style.css" rel='stylesheet' type='text/css' />
<link href="css/style-responsive.css" rel="stylesheet"/>
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="dash/css/font.css" type="text/css"/>
<link href="dash/css/font-awesome.css" rel="stylesheet"> 
<link rel="stylesheet" href="dash/css/morris.css" type="text/css"/>
<!-- calendar -->
<link rel="stylesheet" href="dash/css/monthly.css">
<!-- //calendar -->
<!-- //font-awesome icons -->
<script src="dash/js/jquery2.0.3.min.js"></script>
<script src="dash/js/raphael-min.js"></script>
<script src="dash/js/morris.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<style>
    #ll{
        color: white;
        width:50px;
        align-items: center;
    }
    #date_time
{
margin-left: 20%;
font-size:20px;
//margin-bottom: 40px;
color:green;
  }
  @media only screen and (max-width:800px) {
    #date_time
{
margin-left:auto;
font-size:20px;
//margin-bottom: 40px;
color:green;
}}
</style>


</head>

<section id="container">
<!--header start-->
<header class="header fixed-top clearfix">
<!--logo start-->
<div class="brand">
    <a href="index.html" class="logo">
        MTL
    </a>
    <div class="sidebar-toggle-box">
        <div class="fa fa-bars"></div>
    </div>
</div>
<!--logo end-->
<div class="nav notify-row" id="top_menu">
    <!--  notification start -->
    <ul class="nav top-menu">
        <!-- settings start -->
        <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                <i class="fa fa-tasks"></i>
                <span class="badge bg-success">*</span>
            </a>
            
        </li>
        <!-- settings end-- >

        <!-- inbox dropdown start-->
        <li id="header_inbox_bar" class="dropdown">

            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                <i class="fa fa-facebook" aria-hidden="true" style="color:white"></i>
                <span class="badge bg-important">*</span>
            </a>
            <ul class="dropdown-menu extended inbox">
                <li>
                    <p class="red">You have open the link</p>
                </li>
                <li>
                    <link rel="stylesheet" type="text/css" href="www.google.com">Open</li>
                
                        
            </ul>
        </li>
        <!-- inbox dropdown end -->
        <!-- notification dropdown start-->
        <li id="header_notification_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">

               <i class="fa fa-twitter" aria-hidden="true" style="color: white"></i>
                <span class="badge bg-warning">*</span>
            </a>
            <ul class="dropdown-menu extended notification">
                <li>
                    <p>Open</p>
                </li>
                <li>
                    <div class="alert alert-info clearfix">
                        <span class="alert-icon"><i class="fa fa-bolt"></i></span>
                        <div class="noti-info">
                            <a href="#"> Server #1 overloaded.</a>
                        </div>
                    </div>
                </li>
                
        

        <!-- notification dropdown end-- >
    </ul>
    <!--  notification end -->
</li>

</div>
    <body>
            <span id="date_time"></span>
            <script type="text/javascript">window.onload = date_time('date_time');</script>
    </body>

<body onload="startTime()">
<script type="text/javascript">window.onload = date_time('date_time');</script>
  <div id="txt"></div>
  </body>
<div class="top-nav clearfix">
    <!--search & user info start-->
    <ul class="nav pull-right top-menu">
        <li>
            <!--input type="text" class="form-control search"  placeholder=" Search"-->
        </li>
        <!-- user login dropdown start-->
        <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                <img alt="" src="images/4.jpg">
                <span class="username">Jalal singh</span>
                <b class="caret"></b>
            </a>
            <ul class="dropdown-menu extended logout">
                <li><a href="#"><i class=" fa fa-suitcase"></i>Profile</a></li>
                <li><a href="#"><i class="fa fa-cog"></i> Settings</a></li>
                <li><a href="index.php"><i class="fa fa-key"></i> Log Out</a></li>
            </ul>
        </li>
        <!-- user login dropdown end -->
       
    </ul>
    <!--search & user info end-->
</div>
</header>
<!--header end-->
<!--sidebar start-->
<aside>
    <div id="sidebar" class="nav-collapse">
        <!-- sidebar menu start-->
        <div class="leftside-navigation">
            <ul class="sidebar-menu" id="nav-accordion">
                <li>
                    <a class="active" href="dashboard.php">
                        <i class="fa fa-dashboard"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
                
                <li>
                    <a href="addviewupdateajax.php">
                        <i class="fa fa-bullhorn"></i>
                        <span>STAFF</span>
                    </a>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-users"></i>
                        <span>PROPERTY</span>
                    </a>
                    <ul class="sub">
                        <li><a href="viewproduct.php" class="fa fa-user-plus"> PRODUCT</a></li>
                        <li><a href="viewaccessories.php"  class="fa fa-user-secret"> ACCESSORIES</a></li>
                        <li><a href="viewos.php"  class="fa fa-user-secret"> OUT SOURCE</a></li>
                        <li><a href="viewinstatus.php"  class="fa fa-user-secret"> INSTATUS</a></li>
                        <li><a href="viewstatus.php"  class="fa fa-user-secret"> STATUS</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-users"></i>
                        <span>CUSTOMERS</span>
                    </a>
                    <ul class="sub">
                        <li><a href="add2.php" class="fa fa-user-plus">  ADD CUSTOMER</a></li>
                        <li><a href=""  class="fa fa-user-secret">  VIEW CUSTOMER</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-calendar"></i>
                        <span>CALLENDER</span>
                    </a>
                    <!--ul class="sub">
                        <li><a href="form_component.html">Form Elements</a></li>
                        <li><a href="form_validation.html">Form Validation</a></li>
						<li><a href="dropzone.html">Dropzone</a></li>
                    </ul-->
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-map-marker"></i>
                        <span>LOCATION</span>
                    </a>
                      </li>
                    
        <!-- sidebar menu end-->
    </div>
</aside>
<!--sidebar end-->
<!--main content start-->
<section id="main-content">
	<section class="wrapper">
		<!-- //market-->
		<div class="market-updates">
			 <div class="panel panel-default">
      <div class="panel-heading">
        <div class="page-heading"> <i class="glyphicon glyphicon-edit"></i> Pending Work Details</div>
      </div> <!-- /panel-heading -->
      <div class="panel-body">

        <div class="remove-messages"></div>
        <div id="add-product-messages"></div>
        
          <div  style="max-height:800px; overflow:auto;">
        
        <div class="col-md-4">
        <div class="panel-heading" >
        <button class="btn btn-primary " data-toggle="modal" id="addServiceModalBtn" data-target="#addServiceModal" style="width:250px;"> Add Service Name / List</button>
        </div>
        </div>
        <div class="col-md-4">
        
        <div class="panel-heading" >
        <button  class="btn btn-primary " data-toggle="modal" id="deleteServiceModalBtn" data-target="#deleteServiceModal" style="width:250px;" > Delete Service Name </button>
        </div> 
        
         </div>
        <div class="col-md-4">
        <div class="panel-heading" >
        <!--<div class="div-action pull pull-right" style="padding-bottom:20px;">-->
          <button class="btn btn-primary " data-toggle="modal" id="addProductModalBtn" data-target="#addProductModal" style="width:250px;" >Add New Service </button>
        <!--</div>--> 
         </div> 
         </div>
         <!-- /div-action --> 
        
        
        <!-- /div-action -->  
            
        <hr style="height:2px"/>
        
      
        
        
        
        <table class="table" id="manageProductTable"  >
          <thead>
            <tr>
              <th>No</th>             
              <th>Service_Id</th>
              <th>Service_Date/time</th>              
              <th>Name</th>
              <th>Mobile_No</th>
              <th>Service_Name</th>
              <th>Status</th>
              <th style="width:10%;">Options</th>
            </tr>
          </thead>
        </table>
        <!-- /table -->
        </div>

      </div> <!-- /panel-body -->
    </div> <!-- /panel -->    
  </div> <!-- /col-md-12 -->
</div> <!-- /row -->


<!-- add product -->
<div class="modal fade" id="addProductModal" tabindex="-1" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
    
      <form class="form-horizontal" id="submitProductForm" action="php_action/createServices.php" method="POST" enctype="multipart/form-data">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      <button  type="button" id="mybutton" class="close modalMinimize" > <i class='fa fa-minus'></i> </button>
          <h4 class="modal-title"><i class="fa fa-plus"></i> Add Job/Service</h4>
        </div>

        <div class="modal-body" style="max-height:150px;overflow:auto;">

          <div class="form-group">
        <?php $service_id="";
  $service_id=rand(5, 25);
  //$service_id = "GLC".$service_id;
  date_default_timezone_set("Asia/Kolkata");
  $service_id = "GLC".date("d").date("m").date("y").date("H").date("i").date("s");//.$service_id; ?>
          <!--  <label for="eDate" class="col-sm-4 control-label">Service Id : </label>-->
            
            <div class="col-sm-6">
               <input type="hidden" required class="form-control" id="serviceId" name="serviceId"  disabled="true" autocomplete="off" />
            <input type="hidden" required class="form-control" id="serviceIdh" name="serviceIdh" autocomplete="off"  />
  
            </div>
          </div> <!-- /form-group-->

      <div class="form-group">
            <label for="eDate" class="col-sm-4 control-label">Name : </label>
            
            <div class="col-sm-6">
             <input type="text"  required class="form-control" id="clientName" name="clientName" placeholder="Client Name" autocomplete="off" />
      </div>
          </div> <!-- /form-group-->

    <!--  <div class="form-group">
            <label for="eDate" class="col-sm-4 control-label">Address : </label>
            
            <div class="col-sm-6">-->
             <input type="hidden" required class="form-control" value="--" id="clientAddress" name="clientAddress" placeholder="Address " autocomplete="off" />
    <!--  </div>
          </div> <!-- /form-group-->

    <div class="form-group">
            <label for="eDate" class="col-sm-4 control-label">Mobile No : </label>
            
            <div class="col-sm-6">
            <input type="text" required class="form-control" id="mobileNo" name="mobileNo" placeholder="Mobile Number" autocomplete="off" maxlength="21" />
      </div>
        </div> <!-- /form-group-->

    <div class="form-group">
            <label for="eDate" class="col-sm-4 control-label">Service_Name : </label>
            
         <div class="col-sm-6">
         <select  required name="serviceName" id="serviceName">
        <option value="">~Select~</option>
        
        <?php
        $agentSql = "SELECT * FROM servicename where status = 1  order by  sname_id desc";
        $agentData = $connect->query($agentSql);
        
        while($row = $agentData->fetch_array()) { 
        
        echo "<option value='".$row['sname_id']."'>".$row['sname']."</option>";
        } // /while  acode
        
        ?>
        
      </select> &nbsp;
    <input type="text" required class="form-control" id="serviceNamet" name="serviceNamet" autocomplete="off"  placeholder="Service Name"   />
        
      
      </div>
        </div> <!-- /form-group-->
                    
        </div> <!-- /modal-body -->
        
        <div class="modal-footer">
      
       <div class="col-sm-10">
          <button type="submit" class="btn btn-primary" id="createProductBtn" data-loading-text="Loading..." autocomplete="off" > <i class="glyphicon glyphicon-ok-sign"></i> Save Changes</button>
       
          <button type="button" class="btn btn-default" data-dismiss="modal"> <i class="glyphicon glyphicon-remove-sign"></i> Close</button>
         </div>
       
       </div> <!-- /modal-footer -->        
      </form> <!-- /.form -->      
    </div> <!-- /modal-content -->    
  </div> <!-- /modal-dailog -->
</div> 

<!-- /add categories -->


<!-- addServiceModal  -->
<div class="modal fade" id="addServiceModal" tabindex="-1" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
    
    
    <form class="form-horizontal" id="submitServiceForm" action="php_action/createServiceName.php" method="POST" enctype="multipart/form-data">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      <button  type="button" id="mybuttona" class="close modalMinimize" > <i class='fa fa-minus'></i> </button>
          <h4 class="modal-title"><i class="fa fa-plus"></i> Add Service Name/List</h4>
        </div>
      
      
        <div class="modal-body" style="max-height:350px;overflow:auto;">
      
        <div class="form-group">
        
            <label for="servn" class="col-sm-3 control-label">Service_Name_List</label>
            
            <div class="col-sm-6">
               
        <select   required name="sname" id="sname">
      <option value="">~Select~</option>
        <?php
        $agentSql = "SELECT * FROM servicename where status = 1   order by  sname_id desc";
        $agentData = $connect->query($agentSql);
        
        while($row = $agentData->fetch_array()) { 
        
        echo "<option value='".$row['sname_id']."'>".$row['sname']."</option>";
        } // /while  acode
        
        ?>
              
      </select>
             
          </div>
          </div> <!-- /form-group-->

      
      

          <div class="form-group">
        
            <label for="eDate" class="col-sm-3 control-label">Add_Service_Name</label>
            
            <div class="col-sm-6">
               <input type="text" required class="form-control" id="servicen" name="servicen"   autocomplete="off" />
          </div>
          </div> <!-- /form-group-->

                          
        </div> <!-- /modal-body -->
        
        <div class="modal-footer">
      
       <div class="col-sm-9">
          <button type="submit" class="btn btn-primary" id="createServiceBtn" data-loading-text="Loading..." autocomplete="off" > <i class="glyphicon glyphicon-ok-sign"></i> Add Service Name </button>
       
         <button type="button" class="btn btn-default" data-dismiss="modal"><i class="glyphicon glyphicon-remove-sign"></i> Close</button>
        </div>
       
       </div> <!-- /modal-footer -->        
      </form> <!-- /.form --> 

        
    </div> <!-- /modal-content -->    
  </div> <!-- /modal-dailog -->
</div> 

<!-- /add categories -->

<!-- addServiceModal  -->
<div class="modal fade" id="deleteServiceModal" tabindex="-1" role="dialog" >
  <div class="modal-dialog">
    <div class="modal-content">


<form class="form-horizontal" id="submitServicedForm" action="php_action/deleteServiceName.php" method="POST" enctype="multipart/form-data">
        <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <button  type="button" id="mybuttond" class="close modalMinimize" > <i class='fa fa-minus'></i> </button>
       <h4 class="modal-title">Delete Service Name</h4>
        </div>

        <div class="modal-body" style="max-height:350px;overflow:auto;">

          <div class="form-group">
        
            <label for="servn" class="col-sm-3 control-label">Service_Name</label>
            
            <div class="col-sm-5">
               
        <select   required name="dsname" id="dsname">
      <option value="">~Select~</option>
        <?php
        $agentSql = "SELECT * FROM servicename where status = 1   order by  sname_id desc";
        $agentData = $connect->query($agentSql);
        
        while($row = $agentData->fetch_array()) { 
        
        echo "<option value='".$row['sname_id']."'>".$row['sname']."</option>";
        } // /while  acode
        
        ?>
              
      </select>
             
          </div>
          </div> <!-- /form-group-->

                          
        </div> <!-- /modal-body -->
        
        <div class="modal-footer">
      
       <div class="col-sm-9">
          <button type="submit" class="btn btn-primary" id="createServiceBtn" data-loading-text="Loading..." autocomplete="off" > <i class="glyphicon glyphicon-ok-sign"></i> Delete Service Name</button>
        
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
       
       </div> <!-- /modal-footer -->        
      </form> <!-- /.form --> 

      
    </div> <!-- /modal-content -->    
  </div> <!-- /modal-dailog -->
</div> 

<!-- /add categories -->





<!-- edit categories brand -->

<div class="modal fade" id="editProductModal" tabindex="-1" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
            
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      <button  type="button" id="mybuttone" class="close modalMinimize" > <i class='fa fa-minus'></i> </button>
          <h4 class="modal-title"><i class="fa fa-edit"></i> Edit Service Details</h4>
        </div>
        <div class="modal-body" style="max-height:450px; overflow:auto;">

          <div class="div-loading">
            <i class="fa fa-spinner fa-pulse fa-3x fa-fw"></i>
            <span class="sr-only">Loading...</span>
          </div>

          <div class="div-result">

          <!-- Nav tabs 
          <ul class="nav nav-tabs" role="tablist">
              <li role="presentation" class="active" ><a href="#productInfo" aria-controls="profile" role="tab" data-toggle="tab">Service Info</a></li>    
          </ul> -->

          <!-- Tab panes 
          <div class="tab-content">-->

                  
            
            <div role="tabpanel"   class="tab-pane active"  id="productInfo">
              <form class="form-horizontal" id="editProductForm" action="php_action/editService.php" method="POST">           
              <br />

              <div id="edit-product-messages"></div>

            <div class="form-group">
        
            <label for="eservice" class="col-sm-4 control-label">Service Id : </label>
            
        <div class="col-sm-6">
               <input type="text" required class="form-control" id="serviceIde" name="serviceIde"  disabled="true" autocomplete="off" />
            <input type="hidden" required class="form-control" id="serviceIdhe" name="serviceIdhe" autocomplete="off"  />
  
            </div>
          </div> <!-- /form-group-->

      <div class="form-group">
            <label for="ename" class="col-sm-4 control-label">Name : </label>
            
            <div class="col-sm-6">
             <input type="text"  required class="form-control" id="clientNamee" name="clientNamee" placeholder="Client Name" autocomplete="off" />
      </div>
          </div> <!-- /form-group-->

    <!--  <div class="form-group">
            <label for="eaddress" class="col-sm-4 control-label">Address : </label>
            
            <div class="col-sm-6">-->
             <input type="hidden" value="--" required class="form-control" id="clientAddresse" name="clientAddresse" placeholder="Address " autocomplete="off" />
      <!--</div>
          </div> <!-- /form-group-->

    <div class="form-group">
            <label for="emobile" class="col-sm-4 control-label">Mobile No : </label>
            
            <div class="col-sm-6">
            <input type="text" required class="form-control" id="mobileNoe" name="mobileNoe" placeholder="Mobile Number" autocomplete="off" maxlength="21" />
      </div>
        </div> <!-- /form-group-->

    <div class="form-group">
            <label for="esname" class="col-sm-4 control-label">Service_Name : </label>
            
         <div class="col-sm-6">
         <select  required name="serviceNamee" id="serviceNamee">
        <option value="">~Select~</option>
        <?php
        $agentSql = "SELECT * FROM servicename where status = 1   order by  sname_id desc";
        $agentData = $connect->query($agentSql);
        
        while($row = $agentData->fetch_array()) { 
        
        echo "<option value='".$row['sname_id']."'>".$row['sname']."</option>";
        } // /while  acode
        
        ?>
      </select> &nbsp;
    <input type="text" required class="form-control" id="serviceNamete" name="serviceNamete" autocomplete="off"  placeholder="Service Name"   />
        
      
      </div>
        </div> <!-- /form-group-->
      <div class="modal-footer editProductFooter">
      <div class="col-sm-10">
              
            <button type="submit" class="btn btn-success" id="editProductBtn" data-loading-text="Loading..."> <i class="glyphicon glyphicon-ok-sign"></i> Save Changes</button>
            
            <button type="button" class="btn btn-default" data-dismiss="modal"> <i class="glyphicon glyphicon-remove-sign"></i> Close</button>
                
                 </div>
           </div> <!-- /modal-footer -->             
              </form> <!-- /.form -->             
            </div>    
            <!-- /product info 
          </div> -->

        </div>
          
        </div> <!-- /modal-body -->
                
      
    </div>
    <!-- /modal-content -->
  </div>
  <!-- /modal-dailog -->
</div>

<!-- /categories brand -->




<!-- complete service  -->

<div class="modal fade" id="completeProductModal" tabindex="-1" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
            
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title"><i class="fa fa-edit"></i>Service Payment Details</h4>
        </div>
        <div class="modal-body" style="max-height:450px; overflow:auto;">

          <div class="div-loading">
            <i class="fa fa-spinner fa-pulse fa-3x fa-fw"></i>
            <span class="sr-only">Loading...</span>
          </div>

          <div class="div-result">

                          
            
            <div role="tabpanel"   class="tab-pane active"  id="productInfo">
              <form class="form-horizontal" id="completeProductForm" action="php_action/completeService.php" method="POST">           
              <br />

              <div id="complete-product-messages"></div>

            <div class="form-group">
        
            <label for="aservicec" class="col-sm-4 control-label">Service Id : </label>
            
        <div class="col-sm-6">
               <input type="text" required class="form-control" id="serviceIdc" name="serviceIdc"  disabled="true" autocomplete="off" />
            <input type="hidden" required class="form-control" id="serviceIdhc" name="serviceIdhc" autocomplete="off"  />
  
            </div>
          </div> <!-- /form-group-->

      <div class="form-group">
            <label for="anamec" class="col-sm-4 control-label">Date : </label>
            
            <div class="col-sm-6">
             <input type="text"  required class="form-control" id="pDate" name="pDate" placeholder="Pay Date " autocomplete="off" />
      </div>
          </div> <!-- /form-group-->
      
      <div class="form-group">
            <label for="tAmountc" class="col-sm-4 control-label">Total Amount : </label>
            
            <div class="col-sm-6">
             <input type="text"  required class="form-control" id="tAmount" name="tAmount" placeholder="Total Amount " autocomplete="off" onkeyup="paidAmount()"/>
      </div>
          </div> <!-- /form-group-->

      <div class="form-group">
            <label for="pAmountc" class="col-sm-4 control-label">Paid Amount : </label>
            
            <div class="col-sm-6">
             <input type="text" required class="form-control" id="pAmount" name="pAmount" placeholder="Paid Amount" onkeyup="paidAmount()" autocomplete="off" />
      </div>
          </div> <!-- /form-group-->

    <div class="form-group">
            <label for="bAmounthc" class="col-sm-4 control-label">Balance Amount : </label>
            
            <div class="col-sm-6">
            <input type="text" required class="form-control" id="bAmount" name="bAmount" disabled="true" placeholder="Balance Amount" autocomplete="off"  />
      <input type="hidden" required class="form-control" id="bAmounth" name="bAmounth"  autocomplete="off"  />
      
      
      </div>
        </div> <!-- /form-group-->

    
      <div class="modal-footer editProductFooter">
      <div class="col-sm-10">
              
            <button type="submit" class="btn btn-success" id="completeProductBtn" data-loading-text="Loading..."> <i class="glyphicon glyphicon-ok-sign"></i> Save Changes</button>
            
            <button type="button" class="btn btn-default" data-dismiss="modal"> <i class="glyphicon glyphicon-remove-sign"></i> Close</button>
                
                 </div>
           </div> <!-- /modal-footer -->             
              </form> <!-- /.form -->             
            </div>    
            <!-- /product info 
          </div> -->

        </div>
          
        </div> <!-- /modal-body -->
                
      
    </div>
        </div>
            
</section>
 <div class="market-updates">
               <div class="col-md-3 market-update-gd">
                   <div class="market-update-block clr-block-5">
                    <div class="col-md-4 market-update-right">
                        <i class="fa fa-bill"></i>
                    </div>
                    <div class="col-md-8 market-update-left">
                        <a href="viewinvoice.php"><h4>BILL</h4></a>
                        </div>
                  <div class="clearfix"> </div>
                </div>
            </div>
        </div>
</section>
<!--main content end-->
</section>
<script src="dash/js/bootstrap.js"></script>
<script src="dash/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="dash/js/scripts.js"></script>
<script src="dash/js/jquery.slimscroll.js"></script>
<script src="dash/js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="dash/js/jquery.scrollTo.js"></script>
<!-- morris JavaScript -->	

</body>
</html>
