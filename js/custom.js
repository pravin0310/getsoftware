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
            $(".cart-button").on("mouseover mouseleave", function(){
                $("#cart-dropdown").toggle();
                $("#cart-dropdown").toggle();
            });

});