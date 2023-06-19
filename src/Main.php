<?php

class Main{
    public static $pdo;

    public static function clear_data($data)
    {
        return htmlspecialchars(strip_tags($data));
    }

    public static function add_article($title, $descr, $img){
        // query
        $query = 'INSERT INTO 	articles SET title = :title, text = :text, img = :img';

        // variable
        $title=self::clear_data($title);
        $text=self::clear_data($descr);
        $img=self::clear_data($img);

        $stmt=self::$pdo->prepare($query);
        $stmt->execute([
            "title"=>$title,
            "text"=>$text,
            "img"=>$img
        ]);

    }
}