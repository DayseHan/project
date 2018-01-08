<?php
    // 引入其他php文件
    include 'connect.php';
    $username = isset($_POST['username']) ? $_POST['username'] : 'null';
    $password = isset($_POST['password']) ? $_POST['password'] : 'null';
    $type = isset($_POST['type']) ? $_POST['type'] : 'null';
    // var_dump($username);
    // var_dump($password);
    // 编写sql语句
        
    

    switch($type){
        case 'reg':$sql = "insert into users(username,password) values('$username','$password')";
            $result = $conn->query($sql);
            if($result){
                echo "true";
            }
        break;

        case 'check':
            // $sql = "select * from $tab";
            $sql = "select * from users where username = '$username'";
            $result = $conn->query($sql);
            if($result->num_rows>0){
                echo "true";
            }
            break;
        break;

        case 'login':
            $sql = "select * from users where username='$username' and password='$password'";
            // 执行sql语句query(),得到一个：查询结果集
            $result = $conn->query($sql);
            // 使用查询结果集
            if($result->num_rows>0){
                echo "$result";
            }
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