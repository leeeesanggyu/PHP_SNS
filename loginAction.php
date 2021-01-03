<?php
    $userid   = $_POST["userid"];
    $userpw = $_POST["userpw"];

   $con = mysqli_connect("localhost", "user1", "12345", "project");
   $sql = "select * from project_user where userid='$userid'";
   $result = mysqli_query($con, $sql);

   $num_match = mysqli_num_rows($result);

   if(!$num_match)
   {
     echo("
           <script>
             window.alert('등록되지 않은 아이디입니다!')
             history.go(-1)
           </script>
         ");
    }
    else
    {
        $row = mysqli_fetch_array($result);
        $db_pass = $row["userpw"];

        mysqli_close($con);

        if($userpw != $db_pass)
        {

           echo("
              <script>
                window.alert('비밀번호가 틀립니다!')
                history.go(-1)
              </script>
           ");
           exit;
        }
        else
        {
            session_start();
            $_SESSION["userid"] = $row["userid"];
            $_SESSION["username"] = $row["username"];

            echo("
              <script>
                location.href = 'index.php';
              </script>
            ");
        }
     }
?>
