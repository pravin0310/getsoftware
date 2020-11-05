<h3>Shopping Cart</h3><br />
        <div class="table-responsive">
         <div align="right">
          <button type="button" id="clear_cart" class="btn btn-warning">Clear Cart</button>
         </div>
         <br />
         <table class="table table-bordered" id="cart_table" style="color:white;">
          <tr>
           <th width="40%">Name</th>
           <th width="15%">Quantity</th>
           <th width="15%">Price</th>
           <th width="15%">Total</th>
           <th width="15%">Action</th>
          </tr>
    
    <?php 
        $count = 0;
        foreach ($value as $items) {
            $count++;
            ?>
         <tr> 
          <td><?php $items["name"]; ?></td>
          <td><?php $items["qty"]; ?></td>
          <td><?php $items["price"]; ?></td>
          <td><?php $items["subtotal"]; ?></td>
          <td><button type="button" name="remove" class="btn btn-danger btn-xs remove_inventory" id=<?php $items["rowid"]; ?>>Remove</button></td>
         </tr>
         <?php 
        }
        ?>
      
         <tr>
         
          <td colspan="4" align="right">Total</td>
          <td><?php  $this->cart->total() ?></td>
          <td><?php $this->cart->total_items() ?></td>
         </tr>
        </table>