<?php

    $number   = $_GET["number"];

    $con = mysqli_connect("localhost", "user1", "12345", "project");
    $sql = "delete from feed where number = $number";
    $result = mysqli_query($con, $sql);
    $row = mysqli_fetch_array($result);

    $copied_name = $row["file_copied"];

	if ($copied_name)
	{
		$file_path = "./data/".$copied_name;
		unlink($file_path);
    }

    $sql = "delete from feed where number = $number";
    mysqli_query($con, $sql);
    mysqli_close($con);

    echo "
	     <script>
	         location.href = 'index.php';
	     </script>
	   ";
?>
