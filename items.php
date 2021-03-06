<?php
    header('Access-Control-Allow-Origin: *');
    header("Access-Control-Allow-Methods: GET, POST");
    header("Access-Control-Allow-Headers: X-Requested-With, Content-Type, X-Token-Auth, Authorization");

    require_once "config/db.php";
    require_once "config/item.php";


    $db = new DatabaseConnection();
    $conn = $db->getConnection();

    $query = "SELECT * FROM `food`";
    $result = $conn->query($query);
    if(!$result){
        http_response_code(200);
        echo json_encode("error");
        die();
    }
    $items;
    $counter = 0;

    while($row = $result->fetch_assoc()){
        $cur = new item($row["id"], $row["name"], $row["type"], $row["price"], $row["description"], $row["image"]);
        $items[$counter++] = $cur;
        // http_response_code(200);
        // echo json_encode($cur);
    }

    http_response_code(200);
    echo json_encode($items);

?>