<?php  
// Product Details  
// Minimum amount is $0.50 US  
$productName = "Demo Product";  
$productID = "DP12345";  
$productPrice = 25; 
$currency = "usd"; 
 
// Convert product price to cent 
$stripeAmount = round($productPrice*100, 2); 
  

   
// // Database configuration   
// define('DB_HOST', 'localhost');  
// define('DB_USERNAME', 'MySQL_Database_Username');  
// define('DB_PASSWORD', 'MySQL_Database_Password');  
// define('DB_NAME', 'MySQL_Database_Name'); 