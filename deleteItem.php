<?php
    header('Access-Control-Allow-Origin: *');
    header("Access-Control-Allow-Methods: GET, POST");
    header("Access-Control-Allow-Headers: X-Requested-With, Content-Type, X-Token-Auth, Authorization");

    require_once "config/db.php";


    $db = new DatabaseConnection();
    $conn = $db->getConnection();

    $data = json_decode(file_get_contents("php://input"));
    $id = $data->id;
    $id = filter_var($id, FILTER_SANITIZE_STRING);
    //echo "$req";

    $query = "DELETE FROM food WHERE `food`.`id` = $id";
    if($conn->query($query)){
        http_response_code(200);
        echo json_encode("successful");
    } else {
        http_response_code(200);
        echo json_encode("error");
    }


    // http_response_code(200);
    // echo json_encode($id);

?>