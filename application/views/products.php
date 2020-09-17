<section id="main-content" >
    <section class="wrapper">
        <!-- //market-->
        <div class="market-updates">
             <div class="panel panel-default">
      <div class="panel-heading">
        <div class="page-heading"> <i class="glyphicon glyphicon-edit"></i> <b>Products Details</b></div>
      </div> <!-- /panel-heading -->
      
      <div class="panel-body"  >
<div class="content"> 

                    <!-- alert message -->
                    <?php if ($this->session->flashdata('message') != null) {  ?>
                    <div class="alert alert-info alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <?php echo $this->session->flashdata('message'); ?>
                    </div> 
                    <?php } ?>
                    
                    <?php if ($this->session->flashdata('exception') != null) {  ?>
                    <div class="alert alert-danger alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <?php echo $this->session->flashdata('exception'); ?>
                    </div>
                    <?php } ?>
                    
                    <?php if (validation_errors()) {  ?>
                    <div class="alert alert-danger alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <?php echo validation_errors(); ?>
                    </div>
                    <?php } ?>
                   


                    <!-- content -->
                  

  </div> <!-- /.content -->
     
    

                   <form method="post" action="<?php echo base_url() ?>products/add" enctype="multipart/form-data">  
                          <label>ENTER PRODUCT</label>  
                          <input type="text" placeholder=" Name" name="name" id="name" class="form-control" />  
                          <br />  

                           <label>AMOUNT</label>  
                          <input type="text" placeholder=" Name" name="amount" id="amount" class="form-control" />  
                          <br /> 

                          <label>QUANTITY</label>  
                          <input type="text" placeholder=" Name" name="quantity" id="quantity" class="form-control" />  
                          <br />  

                           <label>DISCOUNT</label>  
                          <input type="text" placeholder=" Name" name="discount" id="discount" class="form-control" />  
                          <br />  
                          
                          <label>TYPE</label>  
                            <select  id="type" name="type" class="form-control"  >
                            <option value="">select</option>
                            <?php
                            foreach ($value as $class) {
                            ?>
                            <option value="<?php echo $class->product_Name ?>"<?php if (set_value('id') == $class->id) echo "selected=selected" ?>><?php echo $class->product_Name ?></option>
                            <?php
                            $count++;
                            }
                            ?>
                            </select>
                          <br> 
                          <label>STATUS</label>  
                          <select class="form-control" name="status" id="status">
                                   <option value=""></option>
                                   <option value="active">Active</option>
                                   <option value="inactive">Inactive</option>
                                  
                          </select> 
                          <br> 

                          <label>IMAGES</label>  
                          <input type="file" placeholder=" Name" name="userfile" size='20'  id="userfile" class="form-control" /> 
                          <br> 
                
                          <input type="hidden" name="id" id="id" />  
                          <input type="submit" name="insert" id="insert" value="upload" class="btn btn-success" />  
                     </form>  

            </div>
                </div>
            </div>
        </div>
    </div>

</div>            