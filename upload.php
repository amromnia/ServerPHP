<?php
    header('Access-Control-Allow-Origin: *');
    header("Access-Control-Allow-Methods: GET, POST");
    header("Access-Control-Allow-Headers: X-Requested-With, Content-Type, X-Token-Auth, Authorization");
    $fileNames = array('error', 'error');
    $upload_dir = 'uploads/';
    $server_url = 'http://localhost/';
    define ('SITE_ROOT', realpath(dirname(__FILE__)));
    echo SITE_ROOT;
    if($_FILES['nationalID'] && $_FILES['picture']){
        $nationalID_name = $_FILES["nationalID"]["name"];
        $nationalID_tmp_name = $_FILES["nationalID"]["tmp_name"];
        $error = $_FILES["nationalID"]["error"];

        $picture_name = $_FILES["picture"]["name"];
        $picture_tmp_name = $_FILES["picture"]["tmp_name"];
        $error2 = $_FILES["picture"]["error"];
        if($error > 0 || $error2 > 0){
        }
        else{
            $random_name1 = rand(1000,1000000)."-".$nationalID_name;
            $upload_name1 = $upload_dir.strtolower($random_name1);
            $upload_name1 = preg_replace('/\s+/', '-', $upload_name1);

            $random_name2 = rand(1000,1000000)."-".$picture_name;
            $upload_name2 = $upload_dir.strtolower($random_name2);
            $upload_name2 = preg_replace('/\s+/', '-', $upload_name2);
            if(move_uploaded_file($nationalID_tmp_name, $upload_name1)){
                $fileNames[0] = $server_url."/".$upload_name1;
            }
            if(move_uploaded_file($picture_tmp_name, $upload_name2)){
                $fileNames[1] = $server_url."/".$upload_name2;
            }
        }
    }
    http_response_code(200);
    echo json_encode($fileNames);

?>