<section id="main-content" >
    <section class="wrapper">
        <!-- //market-->
        <div class="market-updates">
             <div class="panel panel-default">
      <div class="panel-heading">
        <div class="page-heading"> <i class="glyphicon glyphicon-edit"></i> <b>Promo  Details</b></div>
      </div> <!-- /panel-heading -->
       <div class="table-responsive">  
      <div class="panel-body"  >

     
        <div class="col-md-4">
        <div class="panel-heading" >
        <button class="btn btn-primary " data-toggle="modal" id="addServiceModalBtn" data-target="#add_data_Modal" style="width:200px" > Add Promocode</button>
        </div>
        </div>
     
         <br>
         <!-- /div-action --> 
        
        
        <!-- /div-action -->  
            
        <hr style="height:2px"/>
        
     
     <div  style="max-height:800px; overflow:auto;" >
         <table class="table table-bordered" style="table-layout: black"  >
         <thead> 

            <tr>
              <br> 
              <th width="5%">No</th>             
                           
              <th width="15%">Name</th>

              <th width="15%">Amount</th>
              <th width="15%">Status</th>
           
              <th width="5%">Options</th>
            </tr>
             </thead>

             <tbody>
                 <?php   
                   $sl = 1;
           foreach($value as $row){ 

            ?>
               <tr>
                   <td><?php echo $sl; ?></td>
                 <td><?php echo $row->promo_name ?></td>
                 <td><?php echo number_format($row->amount,2) ?></td>
                 <td><?php echo $row->status ?></td>
                
                  <td class="center" width="80">
                 
               <button type="button" name="view" value="Edit" subid="<?php echo $row->id; ?>" class=" btn btn-xs btn-info edit_data" 
                id="edit_data"  > <i class="fa fa-edit"></button></i>
                  <a href="<?php echo base_url("producttype/delete/$row->id") ?>" onclick="return confirm('<?php echo ("are_you_sure") ?>')" class="btn btn-xs  btn-danger"><i class="fa fa-trash"></i></a> 
                  </td>
               </tr>

             <?php  $sl++; 
           } 
              
             ?>
             </tbody>
        </table>
        
       
        <!-- /table -->
        </div>

      </div> <!-- /panel-body -->
    </div>
    </div> <!-- /panel -->    
  </div> <!-- /col-md-12 -->
</div> <!-- /row -->
</section>
</section>

      </body>  
 </html> 




<!-- Edit Modal -->
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Edit Promo</h4>
        </div>
        <div class="modal-body">
       <form method="post" id="edit_form">  
         <div id="add-product-messages"></div>
                          <label>ENTER CODE</label>  
                          <input type="text" placeholder=" Name" name="product_Name" id="product_Name" class="form-control" />  
                          <br /> 

                          <label>AMOUNT</label>  
                          <input type="text" placeholder=" Name" name="amount" id="amount" class="form-control" />  
                          <br />  
                         
                          <label>STATUS</label>  
                          <select class="form-control" name="status" id="age">
                                   <option value=""></option>
                                   <option value="active">Active</option>
                                   <option value="inactive">Inactive</option>
                                  
                          </select> 
                          <br>  
                
                          <input type="hidden" name="id" id="id"   />  
                          <input type="submit" name="insert" id="Update" value="Update" class="btn btn-success" />  
                     </form>  
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
<!-- End Edit modal -->
 <div id="add_data_Modal" class="modal fade">  
      <div class="modal-dialog">  
           <div class="modal-content">  
                <div class="modal-header">  
                     <button type="button" class="close" data-dismiss="modal">&times;</button>  
                     <h4 class="modal-title">PROMO </h4>  
                </div>

        <div class="remove-messages"></div>
       

                <div class="modal-body">  
                   <div id="add-product-messages"></div>
                     <form method="post" id="insert_form">  
                          <label>ENTER CODE</label>  
                          <input type="text" placeholder=" Name" name="product_Name" id="product_Name" class="form-control" />  
                          <br /> 

                          <label>AMOUNT</label>  
                          <input type="text" placeholder=" Name" name="amount" id="amount" class="form-control" />  
                          <br /> 
                         
                          <label>STATUS</label>  
                          <select class="form-control" name="status" id="age">
                                   <option value=""></option>
                                   <option value="active">Active</option>
                                   <option value="inactive">Inactive</option>
                                  
                          </select> 
                          <br>  
                           <br>
                          <input type="hidden" name="id" id="id"   />  
                          <input type="submit" name="insert" id="insert" value="Insert" class="btn btn-success" />  
                     </form>  
                </div>  
                <div class="modal-footer">  
                     <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>  
                </div>  
           </div>  
      </div>  
 
 <script>  
  var manageProductTable ;

 $(document).ready(function(){  
     
      $(document).on('click', '.edit_data', function(){  
           var id = $(this).attr('subid');  
           $.ajax({  
                url:"<?php echo base_url("promo/user_data/") ?>",  
                method:"POST",  
                data:{id:id},  
                dataType:"json",  
                success:function(data){  

                  console.log(data);
                     $('#product_Name').val(data.promo_name);  
                     $('#amount').val(data.amount);
                     $('#status').val(data.status);  
                     $('#id').val(data.id);  
                     $('#insert').val("Update");  
                     $('#myModal').modal('show');  
                }  
           });  
      });  
      $('#insert_form').on("submit", function(event){  
           event.preventDefault();  
           
        //    if($('#product_Name').val() == "")  
        //    {  
        //         alert("Name is required");  
        //    }  
        //    else if($('#status').val() == '')  
        //    {  
        //         alert("Password is required");  
        //    }  
           
        //    else  
        //    {  
                $.ajax({  
                     url:"<?php echo base_url() ?>promo/add",  
                     method:"POST",  
                     data:$('#insert_form').serialize(),  
                     beforeSend:function(){  
                          $('#insert').val("Inserting");  
                     },  
                     success:function(data){  
                          $('#insert_form')[0].reset();  
                         
                         $('#add-product-messages').html(data);  
              // $('#add-product-messages').html('<div class="alert alert-success">'+
              //   '<button type="button" class="close" data-dismiss="alert">&times;</button>'+
              //   '<strong><i class="glyphicon glyphicon-ok-sign"></i></strong> '+ data +
              // '</div>');

              // remove the mesages
              $(".alert-success").delay(5000).show(10, function() {
                $(this).delay(300).hide(10, function() {
                  $(this).remove();
                });
              }); // /.alert
              location.reload(true)

                     }  
                });  
            
      });  

          $('#edit_form').on("submit", function(event){  
           event.preventDefault();  
           if($('#product_Name').val() == "")  
           {  
                alert("Name is required");  
           }  
           else if($('#status').val() == '')  
           {  
                alert("Password is required");  
           }  
           
           else  
           {  
                $.ajax({  
                     url:"<?php echo base_url() ?>promo/update",  
                     method:"POST",  
                     data:$('#edit_form').serialize(),  
                     beforeSend:function(){  
                          $('#Update').val("Updateing");  
                     },  
                     success:function(data){  
                      console.log(data);
                          // $('#insert_form')[0].reset();  
                         
                         $('#add-product-messages').html(data);  
              // $('#add-product-messages').html('<div class="alert alert-success">'+
              //   '<button type="button" class="close" data-dismiss="alert">&times;</button>'+
              //   '<strong><i class="glyphicon glyphicon-ok-sign"></i></strong> '+ data +
              // '</div>');

              // remove the mesages
              $(".alert-success").delay(5000).show(10, function() {
                $(this).delay(300).hide(10, function() {
                  $(this).remove();
                });
              }); // /.alert
              location.reload(true);

                     }  
                });  
           }  
      });  
    
 });

 manageProductTable = $('#manageProductTable').DataTable({
    'ajax': '<?php echo base_url() ?>producttype/fetch',
    'order': []
  });  
 </script>
 