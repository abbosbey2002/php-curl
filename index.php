<?php 


$ch = curl_init();

curl_setopt($ch,  CURLOPT_URL ,"https://fakestoreapi.com/products");

curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);


$output=curl_exec($ch);


curl_close($ch);

$out=curl_exec($ch);


print_r($out);