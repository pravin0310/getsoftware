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
                    <?php echo (!empty($content)?$content:null) ?>

  </div> <!-- /.content -->
     
    
 <div  style="max-height:800px; overflow:auto;" >
         <table class="datatable table table-striped table-bordered" style="table-layout: black" id="manageProductTable" >
         <thead> 

            <tr>
              <br> 
              <th width="5%">No</th>             
              <th width="10%">Product Name</th>
              <th width="5%">quantity</th>              
              <th width="15%">Amount</th>
              <th width="15%">Discount</th>
              <th width="15%">Product Type</th>
              <th width="15%">Status</th>
              <th width="5%">Image</th>
              <th width="20%">Action</th>
            
            </tr>
             </thead>

             <tbody>
                <?php if (!empty($products)) { ?>
                            <?php $sl = 1; ?>
                            <?php foreach ($products  as $cert) { ?>
                                <tr class="<?php echo ($sl & 1)?"odd gradeX":"even gradeC" ?>">
                                    <td><?php echo $sl; ?></td>
                                      <td><?php echo $cert->name; ?></td>
                                    <td><?php echo $cert->quantity; ?></td>
                                     <td><?php echo $cert->amount; ?></td>
                                    <td><?php echo $cert->discount; ?></td>
                                    <td><?php echo $cert->type ?></td>
                                    <td><?php echo $cert->status; ?></td>
                                  
                                    <td><img class="img-thumbnail" width="100px" height="100px" src="<?php echo base_url('products/'. $cert->image )?>" /></td>
                                   
                                    
                                   
                                    <td class="center" width="80">
                                        <a href="<?php echo base_url("products/user_data/$cert->id") ?>" class="btn btn-xs btn-success"><i class="fa fa-eye"></i></a>

                                        <a href="<?php echo base_url("products/user_data/$cert->id") ?>" class="btn btn-xs  btn-primary"><i class="fa fa-edit"></i></a> 
                                        <a href="<?php echo base_url("products/delete/$cert->id") ?>" onclick="return confirm('<?php echo "are_you_sure"; ?>')" class="btn btn-xs  btn-danger"><i class="fa fa-trash"></i></a> 
                                    </td>
                                </tr>
                                <?php $sl++; ?>
                            <?php } ?> 
                        <?php } ?> 
             </tbody>
        </table>
        
       
        <!-- /table -->
        </div>

            </div>
                </div>
            </div>
        </div>
    </div>

</div>            