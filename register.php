<?php
    header('Access-Control-Allow-Origin: *');
    header("Access-Control-Allow-Methods: GET, POST");
    header("Access-Control-Allow-Headers: X-Requested-With, Content-Type, X-Token-Auth, Authorization");

    require_once "config/db.php";
    require_once "config/user.php";
    
    $email = '';
    $password = '';

    $db = new DatabaseConnection();
    $conn = $db->getConnection();

    $data = json_decode(file_get_contents("php://input"));
    $email = $data->email;
    $password = $data->password;
    $username = $data->username;
    
    
    $query = "INSERT INTO `users` (`id`, `username`, `fname`, `lname`, `password`, `email`, `picture`, `nationalID`, `isActive`, `type`, `createdAt`, `updatedAt`) VALUES (NULL, '$username', NULL, NULL, '$password', '$email', NULL, NULL, '0', '0', '2022-06-06 15:56:13.000000', '2022-06-06 15:56:13.000000');";

    if(!$conn->query($query)){
        http_response_code(200);
        echo json_encode('error');
    }
    else{
        http_response_code(200);
        //echo json_encode('user created added to datazeft');
        $u = new user($username, $password, $email, '012204459');
        echo json_encode($u);
    }
?>