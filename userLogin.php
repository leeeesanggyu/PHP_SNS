<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="./css/custum.css">
<title>SNS</title>
</head>
<script>
	function check_input()
	{
	    if (!document.login_form.userid.value)
	    {
	        alert("아이디를 입력하세요");
	        document.login_form.userid.focus();
	        return;
	    }

	    if (!document.login_form.userpw.value)
	    {
	        alert("비밀번호를 입력하세요");
	        document.login_form.userpw.focus();
	        return;
	    }
	    document.login_form.submit();
	}
	</script>
</head>
<body>
  <header>
    	<?php include "header.php";?>
  </header>

    <div class="container mt-3" style="max-width: 560px;">
      <form name="login_form" method="post" action="loginAction.php">
        <div class="form-group">
          <label>아이디</label>
          <input type="text" name="userid" class="form-control">
        </div>
        <div class="form-group">
          <label>비밀번호</label>
          <input type="password" name="userpw" class="form-control">
        </div>
        <button type="button" class="btn btn-primary" onclick="check_input()">로그인</button>
      </form>
    </div>
  <footer>
      <?php include "footer.php";?>
  </footer>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
</body>
</html>
