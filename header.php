<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>SNS</title>
	<link rel="stylesheet" href="./css/custum.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
  <?php
      session_start();
      if (isset($_SESSION["userid"])) $userid = $_SESSION["userid"];
      else $userid = "";
			if (isset($_SESSION["username"])) $username = $_SESSION["username"];
	    else $username = "";
  ?>
	<!-- <nav class="navbar fixed-top navbar-light bg-light">상단 고정 -->
    <nav class="navbar navbar-expand-lg  navbar-light bg-light">
      <a class="navbar-brand" href="index.php">SNS</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbar">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="index.php">메인</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" id="dropdown" data-toggle="dropdown">
              회원 관리
            </a>
            <div class="dropdown-menu" aria-labelledby="dropdown">
<?php
	if(!$userid) {
?>
              <a class="dropdown-item" href="userLogin.php">로그인</a>
              <a class="dropdown-item" href="userjoin.php">회원가입</a>
							<a class="dropdown-item" href="userlist.php">회원목록</a>
<?php
	} else {
?>
              <a class="dropdown-item" href="logout.php">로그아웃</a>
							<a class="dropdown-item" href="userlist.php">회원목록</a>
<?php
	}
?>
            </div>
          </li>
        </ul>
<?php
	if(!$userid) {
?>
              <a class="navbar-brand" href="userLogin.php">로그인을 하세요.</a>
<?php
	} else {
		$status = $username."(".$userid.")";
?>
              <a class="navbar-brand" href="index.php"><?= $status?> 님</a>
<?php
	}
?>
        <form action="./header_search_Action.php" method="get" class="form-inline my-2 my-lg-0">
          <input type="text" name="search" class="form-control mr-sm-2" placeholder="내용을 입력하세요.">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>
        </form>
      </div>
    </nav>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
</body>
</html>
