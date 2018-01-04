<?php
    header('Access-Control-Allow-Origin:*');
    include "DBHelper.php";

    $username = isset($_POST["username"]) ? $_POST["username"] : 'null';
    $password = isset($_POST["password"]) ? $_POST["password"] : 'null';
    $type = isset($_POST["type"]) ? $_POST["type"] : 'null';

    switch($type){
        case 'add':$sql = "insert into $tab(username,password,phone,age,info,userCity) values('$username','$password','$phone','$age','$info','$userCity')";
            $result = excute($sql);
        break;

        case 'del':$sql = "DELETE FROM $tab where id=$id";
            $result = excute($sql);
        break;

        case 'update':$sql = "update $tab set username='$username',password='$password',phone='$phone',age='$age',userCity='$userCity',info='$info' where id='$id'";
            $result = excute($sql);
            var_dump($sql);

        break;

        case 'search':$sql = "select * from $tab";
            $result = query($sql);
            // var_dump($result);
        break;

        $sql = "select * from adminTable where adminName = '$username' and adminPass = '$password'";

        case 'check':$sql = "select * from users where username = '$username' and password = '$password'";
            $result = query($sql);
        break;
    }
   

    $result = query($sql);

    echo json_encode($result, JSON_UNESCAPED_UNICODE);

?>