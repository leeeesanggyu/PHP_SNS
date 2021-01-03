<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="./css/custum.css">
<title>SNS</title>
</head><script>
     function check_input()
     {
        if (!document.userjoin_form.userid.value) {
            alert("아이디를 입력하세요!");
            document.userjoin_form.userid.focus();
            return;
        }

        if (!document.userjoin_form.userpw.value) {
            alert("비밀번호를 입력하세요!");
            document.userjoin_form.userpw.focus();
            return;
        }

        if (!document.userjoin_form.userpw2.value) {
            alert("비밀번호확인을 입력하세요!");
            document.userjoin_form.userpw2.focus();
            return;
        }
				if (!document.userjoin_form.username.value) {
            alert("이름을 입력하세요!");
            document.userjoin_form.username.focus();
            return;
        }

        if (!document.userjoin_form.useremail.value) {
            alert("이메일 주소를 입력하세요!");
            document.userjoin_form.useremail.focus();
            return;
        }

        if (document.userjoin_form.userpw.value !=
              document.userjoin_form.userpw2.value) {
            alert("비밀번호가 일치하지 않습니다.\n다시 입력해 주세요!");
            document.userjoin_form.userpass.focus();
            document.userjoin_form.userpass.select();
            return;
        }

        document.userjoin_form.submit();
     }

     function reset_form() {
        document.userjoin_form.userid.value = "";
        document.userjoin_form.userpw.value = "";
        document.userjoin_form.userpw2.value = "";
				document.userjoin_form.username.value = "";
        document.userjoin_form.useremail.value = "";
        document.userjoin_form.userid.focus();
        return;
     }

     function check_id() {
       window.open("user_check_id.php?userid=" + document.userjoin_form.userid.value,
           "IDcheck",
            "left=700,top=300,width=350,height=200,scrollbars=no,resizable=yes");
     }
  </script>
</head>
<body>
  <header>
    	<?php include "header.php";?>
  </header>

    <div class="container mt-3" style="max-width: 560px;">
      <form  name="userjoin_form" method="post" action="userjoinAction.php">
        <div class="form-group">
          <label>아이디</label>
          <input type="text" name="userid" class="form-control">
        </div>
          <button type="button" class="btn btn-primary" onclick="check_id()">중복확인</button>
        <div class="form-group">
          <label>비밀번호</label>
          <input type="password" name="userpw" class="form-control">
        </div>
        <div class="form-group">
          <label>비밀번호 확인</label>
          <input type="password" name="userpw2" class="form-control">
        </div>
				<div class="form-group">
          <label>이름</label>
          <input type="text" name="username" class="form-control">
        </div>
        <div class="form-group">
          <label>이메일</label>
          <input type="email" name="useremail" class="form-control">
        </div>
        <button type="button" class="btn btn-primary" onclick="check_input()">회원가입</button>
        <button type="button" class="btn btn-primary" onclick="reset_form()">초기화</button>
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
