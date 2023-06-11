<?php
// Set up a cURL client
$ch = curl_init();

// Define the URLs to scrape
$urls = [
 'https://kun.uz/uz/news/list',
 'https://daryo.uz/category/news',
];

// Loop through each URL
foreach ($urls as $url) {
    echo "data";
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
    @$doc->loadHTML($html);
    
    var_dump($doc);

    // Get all the article elements
    $articles = $doc->getElementsByTagName('article');
    // Loop through each article
    foreach ($articles as $article) {
        // Get the title, text, and date of the article
        $title = $article->getElementsByTagName('h2')->item(0)->textContent;
        $text = $article->getElementsByTagName('div')->item(0)->textContent;
        $date = $article->getElementsByTagName('time')->item(0)->getAttribute('datetime');

        // Get the URL of the article's image
        $imgUrl = $article->getElementsByTagName('img')->item(0)->getAttribute('src');

        // Download the image and save it to disk
        $imgData = file_get_contents($imgUrl);
        $imgFilename = basename($imgUrl);
        file_put_contents('images/' . $imgFilename, $imgData);

        // Store the article information in the database
        $pdo = new PDO('mysql:host=localhost;dbname=news', 'username', 'password');
        $stmt = $pdo->prepare('INSERT INTO articles (title, text, date, image) VALUES (?, ?, ?, ?)');
        $stmt->execute([$title, $text, $date, $imgFilename]);
    }
}

// Close the cURL client
curl_close($ch);