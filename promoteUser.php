<?php
    header('Access-Control-Allow-Origin: *');
    header("Access-Control-Allow-Methods: GET, POST");
    header("Access-Control-Allow-Headers: X-Requested-With, Content-Type, X-Token-Auth, Authorization");

    require_once "config/db.php";

    $db = new DatabaseConnection();
    $conn = $db->getConnection();

    $data = json_decode(file_get_contents("php://input"));


    class user{
        public $id;
        public $username;
        public $type;

        function __construct($id, $username, $type){
            $this->id = $id;
            $this->username = $username;
            $this->type = $type;

        }
    }
    

    $query = "SELECT * FROM users ";
    $result = $conn->query($query);
    $users;
    $counter = 0;

    if($result->num_rows === 0){
        http_response_code(200);
        echo json_encode('error');
    }
    else{
        while($row = $result->fetch_assoc()){
                $u = new user($row['id'], $row["username"], $row['type']);
                $users[$counter++] = $u;
            
        }

        http_response_code(200);
        echo json_encode($users);
    }
?>