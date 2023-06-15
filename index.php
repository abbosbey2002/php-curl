<?php
// Set up a cURL client

include_once "./config/Bootstrap.php";

$ch = curl_init();

// Define the URLs to scrape
$url ="https://kun.uz/uz/news/category/uzbekiston";

// Loop through each URL
    // Set the URL to scrape
    curl_setopt($ch, CURLOPT_URL, $url);

    // Set the user agent
    curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3');

    // Return the response as a string
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

    // Execute the cURL request and get the response
    $html = curl_exec($ch);


    // Create a new DOM Document
    $doc = new DOMDocument();

    // Load the HTML content into the DOM Document
    $doc->loadHTML($html);
    
    $item=$doc->getElementsByTagName('a');
    

    $item_count=$doc->getElementById('news-list')->getElementsByTagName('a')->length-1;
    


    $single_new_urls=array();
    // get a link news 
    
    for($i=0; $i<$item_count; $i++){
        echo  '<br>';
        $div=$doc->getElementById('news-list');

        // var_dump( strlen($div->getElementsByTagName('a')->item($i)->getAttribute('href')));
        
            $link='https://kun.uz'.$div->getElementsByTagName('a')->item($i)->getAttribute('href');
            // var_dump($div->getElementsByTagName('a'));
            // var_dump($i);
        
        $single_new_urls[]=$link;
        // https://kun.uz//uz/news/2023/06/15/hisor-qoriqxonasiga-ornatilgan-fotoqopqonga-tyan-shan-qongir-ayigi-tushdi
        // https://kun.uz/uz/news/2023/06/15/bir-qator-xizmatlar-uchun-litsenziya-olishda-davlat-boji-kamaytirildi
        // https://kun.uz/uz/news/2023/06/15/bir-qator-xizmatlar-uchun-litsenziya-olishda-davlat-boji-kamaytirildi
    }
    curl_close($ch);
  
    // end

    // start single news 


    
    foreach($single_new_urls as $single_url){
        // echo $single_url;
        
        $ch = curl_init();
        
        // Loop through each URL
        // Set the URL to scrape
        curl_setopt($ch, CURLOPT_URL, $single_url);
        
        // Set the user agent
        curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3');
        
        // Return the response as a string
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        
        // Execute the cURL request and get the response
        $html = curl_exec($ch);
        
        
        // Create a new DOM Document
        $doc = new DOMDocument();
        
        // Load the HTML content into the DOM Document
        $doc->loadHTML($html);
        $title=$doc->getElementsByTagName('h1')->item(0)->textContent;
        $descr_count=$doc->getElementsByTagName('div')->length-1;
        // description
        $descr='';
        $img='';
        for($i=0; $i<$descr_count; $i++){
            if('single-content' == $doc->getElementsByTagName('div')->item($i)->getAttribute('class')){

                $descr=$doc->getElementsByTagName('div')->item($i)->textContent;
                if($doc->getElementsByTagName('div')->item($i)->getElementsByTagName('img')->length>0){
                    $img=($doc->getElementsByTagName('div')->item($i)->getElementsByTagName('img')->item(0)->getAttribute('src')) ?? 'no image';
                }else{
                    $img='noimage.jpg';
                }

            }
        }



        echo "<h1> $title </h1> <img src=$img alt=$title /> <p> $descr </p> "   ;

        Main::add_article($title, $desc, $img);

     
    }







    // last-newsl


    