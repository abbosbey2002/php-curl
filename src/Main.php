<?php

class Main{
    public static $pdo;

    public static function clear_data($data)
    {
        return htmlspecialchars(strip_tags($data));
    }


    private function check_article($title){
        $result=true;
        $data=self::get_article();
        foreach($data as $article){
            if($article->title==$title){
                return false;
            }
        }
        return $result;
    }

    public static function add_article($title, $descr, $img, $url){
        // query
        $query = 'INSERT INTO 	articles SET title = :title, text = :text, img = :img, url=:url';
        
        // variable
        $title=self::clear_data($title);
        $text=self::clear_data($descr);
        $img=self::clear_data($img);
        
        // check article 
        $main=new Main();
        $check=$main->check_article($title);
        if($check){
            $stmt=self::$pdo->prepare($query);
            $stmt->execute([
                "title"=>$title,
                "text"=>$text,
                "img"=>$img,
                "url"=>$url
            ]);
        }else{
            echo 'eski articllar mavjud';
        }


    }

    public static function get_article(){
        $query="SELECT * from articles";
        $stmt=self::$pdo->prepare($query);
        $stmt->setFetchMode(PDO::FETCH_CLASS, 'Main');
        $stmt->execute();
        return $stmt->fetchAll();
    }
}