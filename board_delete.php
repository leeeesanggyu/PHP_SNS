
<?php
   $number = $_GET["number"];
   $userid2 = $_GET["userid"];

   session_start();
   if (isset($_SESSION["userid"])) $userid = $_SESSION["userid"];
   else $userid = "";
   if (isset($_SESSION["username"])) $username = $_SESSION["username"];
   else $username = "";

   if($userid != $userid2){
     echo("
                 <script>
                 alert('자기가 작성한 글만 삭제할수 있습니다!');
                 history.go(-1)
                 </script>
     ");
             exit;
   }

   if ( !$userid )
   {
       echo("
                   <script>
                   alert('로그인 후 이용해 주세요!');
                   history.go(-1)
                   </script>
       ");
               exit;
   }
?>
<script type= "text/javascript">
   function delete_confirm(){

      answer = confirm("정말 삭제하시겠습니까?");

      if (answer){
         location.href = 'board_delete0.php?number=<?=$number?>';
      }
      else{
      history.back();
      }
   }
</script>
<body onload="delete_confirm()">
</body>
