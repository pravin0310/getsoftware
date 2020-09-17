
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
			<div class="col-md-3 market-update-gd">
				<div class="market-update-block clr-block-2">
					<div class="col-md-4 market-update-right">
						<i class="fa fa-user"> </i>
                        <!--i class="fa fa-list" id="ll" aria-hidden="true"></i-->
					</div>
					 <div class="col-md-8 market-update-left">
					<a href="dashboard1.php"><h4>Pending Works</h4></a>
					<!--h3>13,500</h3>
					<p>Other hand, we denounce</p-->
				  </div>
				  <div class="clearfix"> </div>
				</div>
			</div>
			<div class="col-md-3 market-update-gd">
				<div class="market-update-block clr-block-2">
					<div class="col-md-4 market-update-right">
						<i class="fa fa-check-square-o" ></i>
					</div>
					<div class="col-md-8 market-update-left">
					<a href="index1.php"><h4>Finished Works</h4></a>
						<!--p>MTL Developers</p-->
					</div>
				  <div class="clearfix"> </div>
				</div>
			</div>
			<div class="col-md-3 market-update-gd">
				<div class="market-update-block clr-block-3">
					<div class="col-md-4 market-update-right">
						<i class="fa fa-shopping-cart"></i>
					</div>
					<div class="col-md-8 market-update-left">
						<a href="index2.php"><h4>Return Works</h4></a>
						</div>
				  <div class="clearfix"> </div>
				</div>
			</div>
            <div class="col-md-3 market-update-gd">
                <div class="market-update-block clr-block-3">
                    <div class="col-md-4 market-update-right">
                        <i class="fa fa-search"></i>
                    </div>
                    <div class="col-md-8 market-update-left">
                        <a href="index3.php"><h4>Search</h4></a>
                        </div>
                  <div class="clearfix"> </div>
                </div>
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
