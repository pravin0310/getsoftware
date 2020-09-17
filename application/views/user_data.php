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
                          <input type="text" placeholder=" Name" name="name" id="name" class="form-control" value="<?php echo $items->name ?>" />  
                          <br />  

                           <label>AMOUNT</label>  
                          <input type="text" placeholder=" Name" name="amount" id="amount" value="<?php echo $items->amount ?>" class="form-control" />  
                          <br /> 

                          <label>QUANTITY</label>  
                          <input type="text" placeholder=" Name" name="quantity" value="<?php echo $items->quantity ?>" id="quantity" class="form-control" />  
                          <br />  

                           <label>DISCOUNT</label>  
                          <input type="text" placeholder=" Name" name="discount" value="<?php echo $items->discount ?>" id="discount" class="form-control" />  
                          <br />  
                          
                          <label>TYPE</label>  
                            <select  id="type" name="type" class="form-control"  value="<?php echo $items->type ?>" >
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
                          <select class="form-control" name="status" id="status" value="<?php echo $items->status ?>">
                                   <option value=""></option>
                                   <option value="active">Active</option>
                                   <option value="inactive">Inactive</option>
                                  
                          </select> 
                          <br> 

                          
                          
                            <label>IMAGES</label>  
                          <input type="file" placeholder=" Name" name="userfile" size='20' value="<?php echo $items->image  ?>" id="userfile" class="form-control" />
                           
                          <img name="old_image" class="img-thumbnail" width="100px" height="100px" src="<?php echo base_url('products/'. $items->image )?>" />

                       
                         <br> 
                          <input type="hidden" name="id" id="id" value="<?php echo $items->id ?>" />  
                          <input type="submit" name="update" id="insert" value="Update" class="btn btn-success" />  
                     </form>  

            </div>
                </div>
            </div>
        </div>
    </div>

</div>            