<!DOCTYPE html>
<head>
<meta charset="utf-8">
<style>
h3 {
   padding-left: 5px;
   border-left: solid 5px #edbf07;
}
</style>
</head>
<body>
<h3>아이디 중복체크</h3>
<p>
<?php
   $userid = $_GET["userid"];

   if(!$userid)
   {
      echo("<li>아이디를 입력해 주세요!</li>");
   }
   else
   {
      $con = mysqli_connect("localhost", "user1", "12345", "project");


      $sql = "select * from project_user where userid='$userid'";
      $result = mysqli_query($con, $sql);

      $num_record = mysqli_num_rows($result);

      if ($num_record)
      {
         echo "<li>".$userid." 아이디는 중복됩니다.</li>";
         echo "<li>다른 아이디를 사용해 주세요!</li>";
      }
      else
      {
         echo "<li>".$userid." 아이디는 사용 가능합니다.</li>";
      }

      mysqli_close($con);
   }
?>
</p>
<div>
  <center>
  <button type="button" class="btn btn-primary" onclick="javascript:self.close()">닫 기</button>
  </center>
</div>
</body>
</html>
