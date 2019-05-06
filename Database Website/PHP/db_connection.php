<?php
function OpenCon()
 {
 $dbhost = "localhost";
 $dbuser = "webuser";
 $dbpass = "webpass";
 $db = "electronics_vendor";
 $conn = new mysqli($dbhost, $dbuser, $dbpass,$db) or die("Connect failed: %s\n". $conn -> error);
 
 return $conn;
 }
 
function CloseCon($conn)
 {
 $conn -> close();
 }
   
?>