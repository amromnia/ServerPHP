<?php
    header('Access-Control-Allow-Origin: *');
    header("Access-Control-Allow-Methods: GET, POST");
    header("Access-Control-Allow-Headers: X-Requested-With, Content-Type, X-Token-Auth, Authorization");

    require_once "config/db.php";



    $db = new DatabaseConnection();
    $conn = $db->getConnection();

    $data = json_decode(file_get_contents("php://input"));
    $req = $data;

    //Sanitize Inputs
    $name = filter_var($req->name, FILTER_SANITIZE_STRING);
    $type = filter_var($req->type, FILTER_SANITIZE_STRING);
    $price = filter_var($req->price, FILTER_SANITIZE_STRING);
    $desc = filter_var($req->description, FILTER_SANITIZE_STRING);
    $img = filter_var($req->itemPic, FILTER_SANITIZE_STRING);

    $query = "INSERT INTO `food` (`id`, `name`, `type`, `price`, `description`, `image`) VALUES (NULL, '$name', '$type', $price, '$desc','$img');";
    echo $query;

    if($conn->query($query)){
        http_response_code(200);
        echo json_encode("successfuly added item");
    } else{
        http_response_code(200);
        echo json_encode("error");
    }







?>