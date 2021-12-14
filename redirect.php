<?php

    include_once("./core/function.php");

    $key = clear_data($_GET['key']);

    if(empty($_GET['key'])){
        header("Location /");
    }else{
        $result = db_result_to_array(DB::Query("SELECT * FROM `short_urls` WHERE `short_code` = '" . $key . "'"));
    
        if($result){
            $counter = $result[0]['counter'] + 1;
            DB::Query("UPDATE `short_urls` SET `counter` = '". $counter."' WHERE `id` = '".$result[0]['id']."'");
            header('Location: '.$result[0]['long_url']);
        }
    }
?>