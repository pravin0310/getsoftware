<!DOCTYPE html>
<html>
<head>

	<title>Getsoftwarekeys</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<!-- bootstrap -->
	  
        <?php if (!empty($settings->site_align) && $settings->site_align == "RTL") {  ?>
            <!-- THEME RTL -->
            <link href="<?php echo base_url(); ?>assets/css/bootstrap-rtl.min.css" rel="stylesheet" type="text/css"/>
            <link href="<?php echo base_url('assets/css/custom-rtl.css') ?>" rel="stylesheet" type="text/css"/>
        <?php } ?>



        <!-- Font Awesome 4.7.0 -->
        <link href="<?php echo base_url('assets/css/font-awesome.min.css') ?>" rel="stylesheet" type="text/css"/>

        <!-- semantic css -->
        <link href="<?php echo base_url(); ?>assets/css/semantic.min.css" rel="stylesheet" type="text/css"/> 
        <!-- sliderAccess css -->
        <link href="<?php echo base_url(); ?>assets/css/jquery-ui-timepicker-addon.min.css" rel="stylesheet" type="text/css"/> 
        <!-- slider  -->
        <link href="<?php echo base_url(); ?>assets/css/select2.min.css" rel="stylesheet" type="text/css"/> 
        <!-- DataTables CSS -->
        <link href="<?= base_url('assets/datatables/css/dataTables.min.css') ?>" rel="stylesheet" type="text/css"/> 
  

        <!-- pe-icon-7-stroke -->
        <link href="<?php echo base_url('assets/css/pe-icon-7-stroke.css') ?>" rel="stylesheet" type="text/css"/> 
        <!-- themify icon css -->
        <link href="<?php echo base_url('assets/css/themify-icons.css') ?>" rel="stylesheet" type="text/css"/> 
        <!-- Pace css -->
        <link href="<?php echo base_url('assets/css/flash.css') ?>" rel="stylesheet" type="text/css"/>

        <!-- Theme style -->
        <link href="<?php echo base_url('assets/css/custom.css') ?>" rel="stylesheet" type="text/css"/>
        <?php if (!empty($settings->site_align) && $settings->site_align == "RTL") {  ?>
            <!-- THEME RTL -->
            <link href="<?php echo base_url('assets/css/custom-rtl.css') ?>" rel="stylesheet" type="text/css"/>
        <?php } ?>


        <!-- jQuery  -->
       

  <!-- custom css -->
 
 <link href="<?= base_url('assets/datatables/css/dataTables.min.css') ?>" rel="stylesheet" type="text/css"/>
 <link rel="stylesheet" href="<?php echo base_url('dash/css/bootstrap.min.css'); ?>" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="<?php echo base_url('dash/css/style.css'); ?>" rel='stylesheet' type='text/css' />
<link href="<?php echo base_url('dash/css/style-responsive.css');?>" rel="stylesheet"/>
	<!-- DataTables -->
<!-- //<link rel="stylesheet" href="<?php //echo base_url('assests/plugins/datatables/jquery.dataTables.min.css'); ?>"> -->
<script src="<?php echo base_url('dash/js/jquery2.0.3.min.js'); ?>"></script>
<script src="<?php echo base_url('dash/js/raphael-min.js');?>"></script>
<script src="<?php echo base_url('dash/js/morris.js');?>"></script>

<link rel="stylesheet" href="<?php echo base_url('dash/css/font.css');?>" type="text/css"/>
<link href="<?php echo base_url('dash/css/font-awesome.css');?>" rel="stylesheet"> 
<link rel="stylesheet" href="<?php echo base_url('dash/css/morris.css');?>" type="text/css"/>
  <!-- file input -->
  <!-- <link rel="stylesheet" href="<?php //echo base_url('assests/plugins/fileinput/css/fileinput.min.css'); ?>"> -->

  <!-- jquery -->


  <!-- bootstrap js -->
	
</head>
<section id="container">
<!--header start-->
<header class="header fixed-top clearfix">
<!--logo start-->
<div class="brand">
    <a href="#" class="logo">
        ADMIN
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
            <ul class="dropdown-menu extended tasks-bar">
                <li>
                    <p class="">You have open the link</p>
                </li>
                <li>
                    <a href="#">
                        <div class="task-info clearfix">
                            <div class="desc pull-left">
                                
                                <p style="color: black;"> Server #1 overloaded. </p>
                            </div>
                                    <span class="notification-pie-chart pull-right" data-percent="45">
                            <span class="percent"></span>
                            </span>
                        </div>
                    </a>
                </li>
                
            </ul>
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

    
<div class="top-nav clearfix">
    <!--search & user info start-->
    <ul class="nav pull-right top-menu">
        <li>
            <!--input type="text" class="form-control search"  placeholder=" Search"-->
        </li>
        <!-- user login dropdown start-->
        <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                <img alt="" src=""/>
                <span class="username">   PROFILE</span>
                <b class="caret"></b>
            </a>
            <ul class="dropdown-menu extended logout">
                <li><a href="user.php"><i class=" glyphicon glyphicon-plus"></i>Add Staff</a></li>
                <li><a href="setting.php"><i class="fa fa-cog"></i> Settings</a></li>
                <li><a href="includes/database-backup.php"><i class="glyphicon glyphicon-copy"></i>Backup</a></li>
                <li><a href="<?php echo base_url('admin/logout') ?>"><i class="glyphicon glyphicon-log-out"></i> Log Out</a></li>
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
                    <a  href="dashboard.php">
                        <i class="fa fa-dashboard"></i>
                        <span>DASHBOARD</span>
                    </a>
                </li>
              
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-pencil"></i>
                        <span>PRODUCT TYPE</span>
                    </a>
                    <ul class="sub">
                        <li><a href="<?php echo base_url() ?>producttype"> <i class="fa fa-user-plus"></i>  ADD PRODUCT TYPE</a></li>
                        <li><a href="<?php echo base_url() ?>products"> <i class="fa fa-briefcase"></i> VIEW  PRODUT TYPE</a></li>
                        
                        
                    </ul>
                </li>

                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-pencil"></i>
                        <span>PROMO CODE</span>
                    </a>
                    <ul class="sub">
                        <li><a href="<?php echo base_url() ?>promo"> <i class="fa fa-user-plus"></i>  ADD PROMO CODE</a></li>
                        <li><a href="<?php echo base_url() ?>promo/view"> <i class="fa fa-briefcase"></i> VIEW  PROMO CODE</a></li>
                        
                        
                    </ul>
                </li>

                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-cart-plus"></i>
                        <span>PRODUCTS</span>
                    </a>
                    <ul class="sub">
                        <li><a href="<?php echo base_url() ?>products/index"> <i class="fa fa-user-plus"></i>  ADD PRODUCTS</a></li>
                        <li><a href="<?php echo base_url() ?>products/view"> <i class="fa fa-briefcase"></i> VIEW PRODUTS</a></li>
                        <li><a href="<?php echo base_url() ?>coupen" > <i class="fa fa-download"></i> ADD COUPEN</a></li>
                        
                    </ul>
                </li>

                 <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-users"></i>
                        <span>STAFF DETAILS</span>
                    </a>
                    <ul class="sub">
                        <li><a href="<?php echo base_url() ?>staff"> <i class="fa fa-user-plus"></i>  ADD STAFF</a></li>
                        <li><a href="<?php echo base_url() ?>staff/view"> <i class="fa fa-briefcase"></i> VIEW STAFF</a></li>
                        <!--li><a href="aexpensive.php" > <i class="fa fa-download"></i> </a></li-->
                        
                    </ul>
                </li>
                <!--li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-list-alt"></i>
                        <span>REPORT</span>
                    </a>
                    <ul class="sub">
                        <li><a href="<?php echo base_url() ?>producttype"> <i class="fa fa-check"></i> 
                        ALL  DETAILS  REPORT </a></li>
                        <li><a href="<?php echo base_url() ?>producttype"> <i class="fa fa-upload"></i>  PAYMENT HISTORY VIEW</a></li>
                        <li><a href="<?php echo base_url() ?>producttype" > <i class="fa fa-upload"></i>   PROFIT & LOSS</a></li>
                        <li><a href="<?php echo base_url() ?>producttype"> <i class="fa fa-road"></i>  REPORT EXPORT EXCEL</a></li>
                    </ul>
                </li-->
                
              
        <!-- sidebar menu end-->
    </div>
</aside>
</section>

 
