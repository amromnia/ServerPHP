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

    $email = filter_var($email, FILTER_SANITIZE_STRING);
    $password = filter_var($password, FILTER_SANITIZE_STRING);
    $password = hash("sha512", $password); //hash the password
    if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
        http_response_code(200);
        echo json_encode('no');
    }

    $query = "SELECT * FROM users WHERE users.email = '$email'";
    $result = $conn->query($query);
    if($result->num_rows === 0 || $result->num_rows > 1 || $result->num_rows < 0 || !$result){
        http_response_code(200);
        echo json_encode('no');
    }
    else{
        while($row = $result->fetch_assoc()){
            if($row['password'] == $password){
                http_response_code(200);
                //$user, $pass, $em, $ph, $type, $picture, $nationalID
                $u = new user($row['id'], $row['username'], $row["password"], $row["email"], "0129123813", $row["type"], $row["picture"], $row["nationalID"]);
                echo json_encode($u);
            }
        }
    }
?>