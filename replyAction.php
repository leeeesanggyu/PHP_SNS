<meta charset="utf-8">
<?php

    $content = $_POST["reply"];
    $feed = $_POST["feed"];


    $regist_day = date("Y-m-d (H:i)");  // 현재의 '년-월-일-시-분'을 저장

    session_start();
    if (isset($_SESSION["userid"])) $userid = $_SESSION["userid"];
    else $userid = "";
    if (isset($_SESSION["username"])) $username = $_SESSION["username"];
    else $username = "";

    if ( !$userid )
    {
        echo("
                    <script>
                    alert('로그인 후 이용해 주세요!');
                    location.href = 'userLogin.php';
                    </script>
        ");
                exit;
    }

	$content = htmlspecialchars($content, ENT_QUOTES);

	$con = mysqli_connect("localhost", "user1", "12345", "project");

	$sql = "insert into reply (feed, send_id, content, regist_day) ";
	$sql .= "values('$feed', '$username', '$content', '$regist_day')";

	mysqli_query($con, $sql);  // $sql 에 저장된 명령 실행



	mysqli_close($con);                // DB 연결 끊기

	echo "
	   <script>
	    location.href = 'index.php';
	   </script>
	";
?>
