<?php
    session_start();
    if (isset($_SESSION["userid"])) $userid = $_SESSION["userid"];
    else $userid = "";

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

    $number   = $_GET["number"];

    $con = mysqli_connect("localhost", "user1", "12345", "project");
    $sql = "UPDATE feed SET likecount = likeCount + 1 WHERE number = $number";
    mysqli_query($con, $sql);

  //   $copied_name = $row["file_copied"];
  //
	// if ($copied_name)
	// {
	// 	$file_path = "./data/".$copied_name;
	// 	unlink($file_path);
  //   }

    // $sql = "delete from feed where number = $number";
    // mysqli_query($con, $sql);


    mysqli_close($con);

    echo "
	     <script>
	         location.href = 'index.php';
	     </script>
	   ";
?>
