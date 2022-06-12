<?php
    header('Access-Control-Allow-Origin: *');
    header("Access-Control-Allow-Methods: GET, POST");
    header("Access-Control-Allow-Headers: X-Requested-With, Content-Type, X-Token-Auth, Authorization");
    $fileName = 'error';
    $upload_dir = 'uploads/';
    $server_url = 'http://localhost:6969';
    define ('SITE_ROOT', realpath(dirname(__FILE__)));

    if($_FILES['foodpic']){
        $foodpic_name = $_FILES["foodpic"]["name"];
        $foodpic_tmp_name = $_FILES["foodpic"]["tmp_name"];
        $error = $_FILES["foodpic"]["error"];

        if($error > 0){
        }
        else{
            $random_name1 = rand(1000,1000000)."-".$foodpic_name;
            $upload_name1 = $upload_dir.strtolower($random_name1);
            // $upload_name1 = preg_replace('/\s+/', '-', $upload_name1);

            if(move_uploaded_file($foodpic_tmp_name, $upload_name1)){
                $fileName = $server_url."/ServerPHP/".$upload_name1;
            }
           
        }
    }
    http_response_code(200);
    echo json_encode($fileName);

?>