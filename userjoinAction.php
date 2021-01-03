<?php
    $userid   = $_POST["userid"];
    $userpw = $_POST["userpw"];
    $username = $_POST["username"];
    $useremail  = $_POST["useremail"];


    $con = mysqli_connect("localhost", "user1", "12345", "project");

	$sql = "insert into project_user(userid, userpw, username, useremail) ";
	$sql .= "values('$userid', '$userpw', '$username', '$useremail')";

	mysqli_query($con, $sql);  // $sql 에 저장된 명령 실행
    mysqli_close($con);

    echo "
	      <script>
	          location.href = 'index.php';
	      </script>
	  ";
?>
