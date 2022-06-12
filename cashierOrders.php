<?php
    header('Access-Control-Allow-Origin: *');
    header("Access-Control-Allow-Methods: GET, POST");
    header("Access-Control-Allow-Headers: X-Requested-With, Content-Type, X-Token-Auth, Authorization");

    require_once "config/db.php";
    require_once "config/order.php";


    $db = new DatabaseConnection();
    $conn = $db->getConnection();

    $data = json_decode(file_get_contents("php://input"));
    //echo "$req";

    $query = "SELECT orders.id, users.username, food.name from users, food, orders, order_food WHERE users.id = orders.user_id AND food.id = order_food.foodId AND order_food.orderId = orders.id;";
    $result = $conn->query($query);

    $orders = Array();
    $counter = 0;

    while($row = $result->fetch_assoc()){
        // $cur = new item($row["id"], $row["name"], $row["type"], $row["price"], $row['description']);
        // $items[$counter++] = $cur;
        $cur = new order($row['id'], $row['username'], $row['name']);
        $orders[$counter++] = $cur;
    }

    http_response_code(200);
    echo json_encode($orders);

    // http_response_code(200);
    // echo json_encode($items);

?>