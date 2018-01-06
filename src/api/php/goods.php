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
    // var_dump($username);
    // var_dump($password);
    // 编写sql语句

    switch($type){
        case 'reg':$sql = "insert into users(username,password) values('$username','$password')";
            $result = $conn->query($sql);
            echo "true";
        break;

        case 'del':$sql = "DELETE FROM $tab where id=$id";
            $result = excute($sql);
        break;

        case 'update':$sql = "update $tab set username='$username',password='$password',phone='$phone',age='$age',userCity='$userCity',info='$info' where id='$id'";
            $result = excute($sql);
            var_dump($sql);

        break;

        case 'nav':
            $sql = "select * from nav";
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
            
            $row = $result->fetch_all(MYSQLI_ASSOC);
            
            echo json_encode($row,JSON_UNESCAPED_UNICODE);
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

    //释放查询结果集，避免资源浪费
    // $result->close();
    // 关闭数据库，避免资源浪费
    // $conn->close();
    
    // 返回数组
    // $row = $result->fetch_all(MYSQLI_ASSOC);
    // $res = json_encode($row,JSON_UNESCAPED_UNICODE);
    // echo "$res";
?>