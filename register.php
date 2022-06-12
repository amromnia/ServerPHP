<?php
    header('Access-Control-Allow-Origin: *');
    header("Access-Control-Allow-Methods: GET, POST");
    header("Access-Control-Allow-Headers: X-Requested-With, Content-Type, X-Token-Auth, Authorization");

    require_once "config/db.php";
    require_once "config/user.php";

    $email = '';
    $password = '';
    $picture = '';
    $nationalID = '';

    $db = new DatabaseConnection();
    $conn = $db->getConnection();

    $data = json_decode(file_get_contents("php://input"));
    $email = $data->email;
    $password = $data->password;
    $username = $data->username;
    $nationalID = $data->nationalID;
    $picture = $data->picture;

    $email = filter_var($email, FILTER_SANITIZE_STRING);
    $password = filter_var($password, FILTER_SANITIZE_STRING);
    $username = filter_var($username, FILTER_SANITIZE_STRING);
    $nationalID = filter_var($nationalID, FILTER_SANITIZE_STRING);
    $picture = filter_var($picture, FILTER_SANITIZE_STRING);
    $password = hash("sha512", $password); //hash the password

    if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
        http_response_code(200);
        echo json_encode("Email Error: "+$email);
        die();
    }
    $query = "INSERT INTO `users` (`id`, `username`, `fname`, `lname`, `password`, `email`, `picture`, `nationalID`, `isActive`, `type`, `createdAt`, `updatedAt`) VALUES (NULL, '$username', NULL, NULL, '$password', '$email', '$picture', '$nationalID', '0', 'client', '2022-06-06 15:56:13.000000', '2022-06-06 15:56:13.000000');";

    if(!$conn->query($query)){
        http_response_code(200);
        echo json_encode('error');
    }
    else{
        http_response_code(200);
        $u = new user($username, $password, $email, '012204459', "client",$picture, $nationalID);
        echo json_encode($u);
    }
?>