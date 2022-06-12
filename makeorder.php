<?php
    header('Access-Control-Allow-Origin: *');
    header("Access-Control-Allow-Methods: GET, POST");
    header("Access-Control-Allow-Headers: X-Requested-With, Content-Type, X-Token-Auth, Authorization");

    require_once "config/db.php";

    $db = new DatabaseConnection();
    $conn = $db->getConnection();

    $data = json_decode(file_get_contents("php://input"));
    $currCart = $data->currCart;
    $userId = $data->userId;
    $query = "INSERT INTO orders (user_id) VALUES ($userId)";
    $query2 = "SELECT * FROM orders WHERE user_id = $userId ORDER BY id DESC LIMIT 1";
    $result = $conn->query($query);
    if(!$result){
        http_response_code(200);
        echo json_encode("errorikos");
        echo json_encode($query);
        die();
    }
    $result = $conn->query($query2);
    $row = $result->fetch_assoc();
    $orderId = $row['id'];

    for($i = 0; $i < count($currCart); $i++){
        $currFoodID = $currCart[$i]->foodID;
        $currquantity = $currCart[$i]->quantity;
        $query = "INSERT INTO order_food (orderId, foodId, quantity) VALUES ($orderId, $currFoodID, $currquantity)";
        $result = $conn->query($query);
        if(!$result){
            http_response_code(200);
            echo json_encode("errorikos two.two");
            echo json_encode($query);
            echo json_encode($query2);
            die();
        }
    }
    http_response_code(200);
    echo json_encode("success");
?>