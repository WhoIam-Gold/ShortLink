<?
include_once("../core/function.php");


$LongURL = clear_data($_POST['LongLink']);
$res = GetURL($LongURL);

if (!$LongURL) {
    $error = '<div class="alert alert-danger" role="alert">Укажите ссылку!</div>';
} elseif ($res) {
    $error = '<div class="alert alert-success" role="alert">Ваша ссылка -  
        <span style="color:red">
            ' . $_SERVER['HTTP_HOST'] . "/-" . $res[0]['short_code'] . '
        </span>
    </div>';
}elseif(!ValidUrl($LongURL)){
    $error = '<div class="alert alert-danger" role="alert">Укажите корректную ссылку!</div>';
} else {

    $dateCreated = strtotime(date("d.m.Y H:i:s"));

    $rand_str = generate_short_link();
    $uniq_str = db_result_to_array(DB::Query("SELECT `short_code` FROM `short_urls` WHERE `short_code` = '" . $rand_str . "'"));

    if (!empty($uniq_str[0]["short_code"])) {

        while ($uniq_str[0]["short_code"] == $rand_str) {

            $rand_str = generate_short_link();
            $uniq_str = db_result_to_array(DB::Query("SELECT `short_code` FROM `short_urls` WHERE `short_code` = '" . $rand_str . "'"));
        }
    }


    $res = DB::Query("INSERT INTO `short_urls` (`long_url`, `short_code`, `date_created`) VALUES ('" . $LongURL . "', '" . $rand_str . "', '" . $dateCreated . "')");

    $ShortLink = $_SERVER['HTTP_HOST'] . "/-" . $rand_str;
    $error = '<div class="alert alert-success" role="alert">
        Ваша ссылка -  
            <span style="color:red">
                ' . $ShortLink . '
            </span>
        </div>';
}

print $error;
?>
