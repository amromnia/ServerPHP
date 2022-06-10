<?php
    header('Access-Control-Allow-Origin: *');
    header("Access-Control-Allow-Methods: GET, POST");
    header("Access-Control-Allow-Headers: X-Requested-With, Content-Type, X-Token-Auth, Authorization");

    require_once "config/db.php";
   


    $db = new DatabaseConnection();
    $conn = $db->getConnection();

    $data = json_decode(file_get_contents("php://input"));
    $req = $data;
    

    $query = "INSERT INTO `food` (`id`, `name`, `type`, `price`, `description`) VALUES (NULL, '$data->name', '$data->type', $data->price, '$data->description');";
    echo $query;
    
    if($conn->query($query)){
        http_response_code(200);
        echo json_encode("successfuly added item");
    } else{
        http_response_code(200);
        echo json_encode("error");
    }

    

   

    
    
?>