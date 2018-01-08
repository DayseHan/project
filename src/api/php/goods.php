<?php
    // 引入其他php文件
    header("Content-Type: text/html; charset=utf-8");
    include 'connect.php';
    
    $username = isset($_GET['username']) ? $_GET['username'] : 'null';
    $password = isset($_GET['password']) ? $_GET['password'] : 'null';
    $type = isset($_GET['type']) ? $_GET['type'] : 'null';
    $type2 = isset($_GET['type2']) ? $_GET['type2'] : 'null';
    $list = isset($_GET['_data']) ? $_GET['_data'] : 'null';
    $goods_list_l = isset($_GET['pos']) ? $_GET['pos'] : 'null';
    $id = isset($_GET['id']) ? $_GET['id'] : 'null';
    $search = isset($_GET['search']) ? $_GET['search'] : 'null';
    $cart = isset($_GET['search']) ? $_GET['search'] : 'null';
    $cart_id = isset($_GET['cart_id']) ? $_GET['cart_id'] : 'null';
    $qty = isset($_GET['qty']) ? $_GET['qty'] : '5';
    $page = isset($_GET['page']) ? $_GET['page'] : '1';
    // 编写sql语句

    switch($type){

        case 'del': $sql = "select cart from users where username = '$username'";
            $result = $conn->query($sql);

            $row = $result->fetch_all(MYSQLI_ASSOC);
            $str = $row[0]["cart"];
            $arr = json_decode($str);
            // var_dump($arr);
            
            $key = array_search($id, $arr);
            if ($key !== false)
                array_splice($arr, $key, 1);

            $str = json_encode($arr);
            $sql = "update users set cart='$str' where username='$username'";
            $res = $conn->query($sql);
            // // var_dump($result);
            echo json_encode($res,JSON_UNESCAPED_UNICODE);
        break;

        case 'add': $sql = "select cart from users where username = '$username'";
            $result = $conn->query($sql);

            $row = $result->fetch_all(MYSQLI_ASSOC);
            $str = $row[0]["cart"];
            $arr = json_decode($str);
            $len = count($arr);
            $arr[$len] = (int)$id;
            $str = json_encode($arr);
            $sql = "update users set cart='$str' where username='$username'";
            $res = $conn->query($sql);
            // var_dump($result);
            echo json_encode($res,JSON_UNESCAPED_UNICODE);
        break;

        case 'cart':
            $sql = "select cart from users where username = '$username'";

            $result = $conn->query($sql);
                $row = $result->fetch_all(MYSQLI_ASSOC); 
                echo json_encode($row,JSON_UNESCAPED_UNICODE);
            
        break;

        case 'cart_search':
            $sql = "select * from goods where id = '$cart_id'";

            $result = $conn->query($sql);
            $row = $result->fetch_all(MYSQLI_ASSOC); 
            echo json_encode($row,JSON_UNESCAPED_UNICODE);

        break;

        case 'search':
            $sql = "select * from goods where name like '%$search%' or type like '%$search%'";
            $result = $conn->query($sql);
            $row = $result->fetch_all(MYSQLI_ASSOC);
            echo json_encode($row,JSON_UNESCAPED_UNICODE);
        break;

        case 'deta_list':
            $sql = "select * from goods where id = '$id'";
            $result = $conn->query($sql);
            
            $row = $result->fetch_all(MYSQLI_ASSOC);
            
            echo json_encode($row,JSON_UNESCAPED_UNICODE);
        break;

        case 'list':
            $sql = "select * from goods where type = '$list'";
            $result = $conn->query($sql);
            
            $arr_data = $result->fetch_all(MYSQLI_ASSOC);
            // $arr_data = json_decode($row);
            
    $res = array(
        'data'=>array_slice($arr_data, ($page-1)*$qty,$qty),
        'total'=>count($arr_data)
    );
            echo json_encode($res,JSON_UNESCAPED_UNICODE);
        break;

        case 'goods_list_l':
            $sql = "select * from goods where grade = '$goods_list_l'";
            $result = $conn->query($sql);
            
            $row = $result->fetch_all(MYSQLI_ASSOC);
            
            echo json_encode($row,JSON_UNESCAPED_UNICODE);
        break;

        case 'nav':
            $sql = "select * from nav";
            $result = $conn->query($sql);
            $row = $result->fetch_all(MYSQLI_ASSOC);
            echo json_encode($row,JSON_UNESCAPED_UNICODE);
        break;

        case 'daoh':
            $sql = "select data from nav where type2 = '$type2'";
            $result = $conn->query($sql);
            $row = $result->fetch_all(MYSQLI_ASSOC);
            echo json_encode($row,JSON_UNESCAPED_UNICODE);
        break;

        case 'all':
            $sql = "select * from goods";
            // 执行sql语句query(),得到一个：查询结果集
            $result = $conn->query($sql);
            // 使用查询结果集
            $row = $result->fetch_all(MYSQLI_ASSOC);
            echo json_encode($row,JSON_UNESCAPED_UNICODE);
        break;
    }

    // 释放查询结果集，避免资源浪费
    $result->close();
    // 关闭数据库，避免资源浪费
    $conn->close();
    
    // 返回数组
    // $row = $result->fetch_all(MYSQLI_ASSOC);
    // $res = json_encode($row,JSON_UNESCAPED_UNICODE);
    // echo "$res";
?>