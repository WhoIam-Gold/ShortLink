<?php

include('db.php');

//Ф-я  для работы с  результатами  выборки
function db_result_to_array($result)
    {
        $res_array = array();

        $count = 0;

        while ($row = mysqli_fetch_assoc($result)) {
            $res_array[$count] = $row;
            $count++;
        }
        return $res_array;
    }

//Ф-я  для очистки входящих данных
function clear_data($data)
    {
        $data = trim(htmlspecialchars($data, ENT_QUOTES, 'UTF-8'));
        return $data;
    }

//Ф-я  для генерации короткой ссылки
function generate_short_link()
    {

        $charset = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';

        $rand_str = '';

        $desired_length = rand(6, 12);

        while (strlen($rand_str) < $desired_length) $rand_str .= substr(str_shuffle($charset), 0, 1);

        return $rand_str;
    }

//Ф-я  для проверки валидности URL
function ValidUrl($data){
    return filter_var($data, FILTER_VALIDATE_URL);
}

//Ф-я  для получения  короткой ссылки с таблицы, если уже была  ранее добавлена
function GetURL($data){
    $res = db_result_to_array(DB::Query("SELECT `short_code` FROM `short_urls` WHERE `long_url` = '$data'"));
    return $res;
}

?>