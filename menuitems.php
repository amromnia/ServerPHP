<?php
    header('Access-Control-Allow-Origin: *');
    header("Access-Control-Allow-Methods: GET, POST");
    header("Access-Control-Allow-Headers: X-Requested-With, Content-Type, X-Token-Auth, Authorization");

    require_once "config/db.php";
    require_once "config/menuitem.php";


    $db = new DatabaseConnection();
    $conn = $db->getConnection();

    // $data = json_decode(file_get_contents("php://input")); //No need for request data since it only selects all food
    // $req = $data->req;
    //echo "$req";

    $query = "SELECT * FROM `food`";
    $result = $conn->query($query);

    $items;
    $counter = 0;

    while($row = $result->fetch_assoc()){
        $cur = new menuitem($row["id"], $row["name"], $row['Description'],  $row["type"], $row["price"], $row["image"]);
        $items[$counter++] = $cur;
        // http_response_code(200);
        // echo json_encode($cur);
    }

    http_response_code(200);
    echo json_encode($items);

?>