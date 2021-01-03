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
<body>
  <header>
      <?php include "header.php";?>
    </header>
	<section class="container">

		<form method="get" action="./search_Action.php" class="form-inline mt-3">
			<select id="SearchType" name="SearchType" class="form-control mx-1 mt-2">
				<option value=title>제목</option>
				<option value=username>이름</option>
				<option value=userid>아이디</option>
			</select>

			<input type="text" name="search" class="form-control mx-1 mt-2" placeholder="내용을 입력하세요">
			<button type="submit" class="btn btn-primary mx-1 mt-2">검색</button>

			<a class="btn btn-primary mx-1 mt-2" data-toggle="modal" href="#registerModal">등록하기</a>
			<!-- <a class="btn btn-danger mx-1 mt-2" data-toggle="modal" href="#reportModal">신고하기</a> -->
		</form>

<?php
    $searchType   = $_GET["SearchType"];
    $search = $_GET["search"];

    $con = mysqli_connect("localhost", "user1", "12345", "project");
	  $sql = "select * from feed where $searchType LIKE '%$search%' order by number desc";
    $result = mysqli_query($con, $sql);
    $total_record = mysqli_num_rows($result); // 전체 글 수

    for ($i=0; $i<$total_record; $i++)
    {
       mysqli_data_seek($result, $i);
       // 가져올 레코드로 위치(포인터) 이동
       $row = mysqli_fetch_array($result);
       // 하나의 레코드 가져오기
    $number    = $row["number"];
    $userid    = $row["userid"];
    $username      = $row["username"];
    $title     = $row["title"];
    $content   = $row["content"];
    $time 		 = $row["time"];
    $likecount = $row["likecount"];
    $file_name    = $row["file_name"];
    $file_type    = $row["file_type"];
    $file_copied  = $row["file_copied"];

    $content = str_replace(" ", "&nbsp;", $content);
    $content = str_replace("\n", "<br>", $content);
    ?>
    <div class="card bg-light mt-3">
    <div class="card-header bg-light">
      <div class="row">
        <div class="col-8 text-left"><strong><?= $title?></strong>&nbsp;<small><?= $username?> <?= $userid?>&nbsp; <?= $time?></small></div>
        <div class="col-4 text-right">
          <a href="./board_delete.php?number=<?= $number?>&userid=<?= $userid?>">삭제</a>
        </div>
      </div>
    </div>
    <div class="card-body">
      <div class="card-title">
        <!-- 사진 내용 -->
        <?= "<img src=\"./data/$file_copied\" height='300px'/>" ?>


      </div>
      <p class="card-text"><?= $content?></p>
      <div class="row">
        <div class="col-12 text-left">
          <a onclick="return confirm('좋아요를 누르시겠습니까?')" href="./likeAction.php?number=<?= $number?>">
          <strong>좋아요<span style="color: red;"> <?= $likecount?></strong></span>
          </a>
        </div>

        <?php
          $con2 = mysqli_connect("localhost", "user1", "12345", "project");
          $sql2 = "select * from reply where feed='$number' order by feed desc";
          $result2 = mysqli_query($con2, $sql2);
          $total_record2 = mysqli_num_rows($result2);	//전체 글 수

          for($j = 0; $j < $total_record2; $j++)
          {
            mysqli_data_seek($result2, $j);//가져올 레코드로 위치(포인터) 이동
            $row2 = mysqli_fetch_array($result2); //하나의 레코드 가져오기

            $feed = $row2["feed"];
            $send_id = $row2["send_id"];
            $content = $row2["content"];
            $regist_day = $row2["regist_day"];
        ?>
        <div class="col-12 text-left">
          <hr /><strong><?= $send_id?></strong>&nbsp;&nbsp;:&nbsp;&nbsp;<?= $content?> <small><?= $regist_day?></small>
        </div>
        <?php
           }
        ?>
          <div class="col-10">
        <form method="post" action="./replyAction.php" name="reply_form">
            <input type="text" name="reply" class="form-control mt-3" placeholder="댓글을 입력하세요">
            <input type="hidden" name="feed" value="<?=$number?>">
            <input type="hidden" name="send_id" value="<?=$username?>">
          </div>
          <div class="col-2 text-right">
            <button type="submit" class="btn btn-primary mt-3">입력</button>
        </form>
          </div>

      </div>
    </div>
    </div>

    <?php
     }
     mysqli_close($con);
    ?>
    </section>
    <?php include "board_form.php";?>
  	<?php include "report_form.php";?>
    <footer>
      	<?php include "footer.php";?>
    </footer>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
  </body>
  </html>
