
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
         
         $(".cart-button").one("mouseover", function() {
             $(".cart-dropdown").addClass('permahover');
         });
         $(".cart-button").one("mouseleave", function() {
           $(".cart-dropdown").addClass('permahover');
           $(".cart-dropdown").hide();
         });

         $(document).ready(function(){
        $("#search").keyup(function(){
       if($("#search").val().length>3){
       $.ajax({
        type: "post",
        url: "<?php base_url() ?>Shopping_cart/search",
        
        dataType:'Json',    
        data:'search='+$("#search").val(),
        success: function(response){
          console.log(response);
         // $('#finalResult').html("");
         // var obj = JSON.parse(response);
         // if(obj.length>0){
         //  try{
         //   var items=[];  
         //   $.each(obj, function(i,val){           
         //       items.push($('<li/>').text(val.name + " " + val.image));
         //   }); 
         //   $('#finalResult').append.apply($('#finalResult'), items);
         //  }catch(e) {  
         //   alert('Exception while request..');
         //  }  
         // }else{
         //  $('#finalResult').html($('<li/>').text("No Data Found"));  
         // }  
         
        },
       //  error: function(){      
       //   alert('Error while request..');
       //  }
       });
       }
       return false;
        });
      });
        

});