<?php
    header('Access-Control-Allow-Origin: *');
    header("Access-Control-Allow-Methods: GET, POST");
    header("Access-Control-Allow-Headers: X-Requested-With, Content-Type, X-Token-Auth, Authorization");

    require_once "config/db.php";

    $email = '';
    $password = '';

    $db = new DatabaseConnection();
    $conn = $db->getConnection();

    $data = json_decode(file_get_contents("php://input"));
    $email = $data->email;
    $password = $data->password;

    $query = "SELECT password FROM users WHERE users.email = '$email'";
    $result = $conn->query($query);
    if($result->num_rows === 0){
        http_response_code(200);
        echo json_encode('no');
    }
    else{
        $row = $result->fetch_assoc();
        if($row['password'] === $password){
            http_response_code(200);
            echo json_encode('yes');
        }
    }
?>