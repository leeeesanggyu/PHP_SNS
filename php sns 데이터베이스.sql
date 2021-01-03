-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 21-01-03 15:32
-- 서버 버전: 10.4.14-MariaDB
-- PHP 버전: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `project`
--
CREATE DATABASE IF NOT EXISTS `project` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `project`;

-- --------------------------------------------------------

--
-- 테이블 구조 `feed`
--

CREATE TABLE `feed` (
  `number` int(11) NOT NULL,
  `userid` varchar(40) NOT NULL,
  `username` varchar(20) NOT NULL,
  `title` varchar(80) NOT NULL,
  `content` varchar(204) NOT NULL,
  `time` varchar(40) NOT NULL,
  `likecount` int(11) NOT NULL,
  `file_name` varchar(40) DEFAULT NULL,
  `file_type` varchar(40) DEFAULT NULL,
  `file_copied` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `feed`
--

INSERT INTO `feed` (`number`, `userid`, `username`, `title`, `content`, `time`, `likecount`, `file_name`, `file_type`, `file_copied`) VALUES
(28, 'kmskms', '곽민성', '요즘 비트코인 왜이러냐', '올라가겠네~~~~~~~\r\nㅋㅋㅋ\r\nㅋㅋㅋㅋㅋㅋ', '2020-12-05 (13:38)', 3, 'bit.jpg', 'image/jpeg', '2020_12_05_13_38_53.jpg'),
(29, 'kmskms', '곽민성', '얘들아 오랜만에 소주한잔 마셔야지', 'ㅇㅈ?', '2020-12-05 (13:39)', 4, 'soju.jpg', 'image/jpeg', '2020_12_05_13_39_16.jpg'),
(30, 'pbspbsqhtjd', '박보성', '민성아 소주말고 치킨이나먹자', '오늘 치맥 콜?', '2020-12-05 (13:40)', 1, 'chicken.jpg', 'image/jpeg', '2020_12_05_13_40_05.jpg'),
(31, 'test', '이상규', '오랜만에 강아지 산책시키네', '오랜만에 강아지 산책시키면서 바람쐬니까\r\n기분이 좋네 얘들아', '2020-12-05 (13:41)', 1, 'dog.jpg', 'image/jpeg', '2020_12_05_13_41_12.jpg'),
(32, 'kmskms', '곽민성', '옛날 내사진 ㅋ', 'ㅋㅋㅋㅋㅋㅋ옛날에 찍었던게\r\n아직도 있네\r\n추억팔이 ㅋ', '2020-12-05 (13:42)', 3, '1998.png', 'image/png', '2020_12_05_13_42_01.png'),
(33, 'test', '이상규', '배그 할사람있나', 'ㅇㅇ', '2020-12-05 (13:43)', 1, 'bag.jpg', 'image/jpeg', '2020_12_05_13_43_11.jpg'),
(34, 'dlrudals97', '이경민', '방금 소식듣고 가입했다 얘들아 !', '잘지냈나!', '2020-12-05 (13:45)', 0, 'asd.jpg', 'image/jpeg', '2020_12_05_13_45_14.jpg'),
(35, 'dlrudals97', '이경민', 'ㅇㅇ', 'ㅇㅇ', '2020-12-05 (14:00)', 2, 'zzz.jpg', 'image/jpeg', '2020_12_05_14_00_54.jpg');

-- --------------------------------------------------------

--
-- 테이블 구조 `project_user`
--

CREATE TABLE `project_user` (
  `number` int(11) NOT NULL,
  `userid` varchar(30) DEFAULT NULL,
  `userpw` varchar(30) DEFAULT NULL,
  `username` varchar(10) DEFAULT NULL,
  `useremail` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `project_user`
--

INSERT INTO `project_user` (`number`, `userid`, `userpw`, `username`, `useremail`) VALUES
(1, 'test', 'test', '이상규', 'dltkdrbn@naver.com'),
(2, 'kmskms', '123', '곽민성', 'kmskms@naver.com'),
(3, 'pbspbsqhtjd', '123', '박보성', 'solarpark892@naver.com'),
(4, 'dlrudals97', '123', '이경민', 'dlrudals97@naver.com');

-- --------------------------------------------------------

--
-- 테이블 구조 `reply`
--

CREATE TABLE `reply` (
  `number` int(11) NOT NULL,
  `feed` int(11) DEFAULT NULL,
  `send_id` varchar(30) DEFAULT NULL,
  `content` varchar(2048) DEFAULT NULL,
  `regist_day` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `reply`
--

INSERT INTO `reply` (`number`, `feed`, `send_id`, `content`, `regist_day`) VALUES
(65, 28, '박보성', 'ㅋㅋㅋㅋㅋ 이미 많이 사놨다', '2020-12-05 (13:40)'),
(66, 29, '박보성', '좋지 언제볼까', '2020-12-05 (13:40)'),
(67, 28, '곽민성', 'ㅋㅋ 잘했다 나락가자', '2020-12-05 (13:42)'),
(68, 29, '곽민성', '오늘 저녁에 ㄱㄱ?', '2020-12-05 (13:42)'),
(69, 30, '곽민성', '그래 치맥이나 먹자', '2020-12-05 (13:42)'),
(70, 31, '곽민성', 'ㅋㅋㅋㅋ 귀엽네', '2020-12-05 (13:42)'),
(71, 28, '이상규', '개망했네', '2020-12-05 (13:43)'),
(72, 29, '이상규', 'ㄱㄱ', '2020-12-05 (13:43)'),
(73, 31, '이상규', '귀엽제', '2020-12-05 (13:43)'),
(74, 32, '이상규', 'ㅋㅋ뚜드러 패고싶네', '2020-12-05 (13:43)'),
(75, 33, '이경민', 'ㄱㄱ?', '2020-12-05 (13:45)'),
(76, 29, '이경민', 'ㄱㄱ', '2020-12-05 (13:45)'),
(77, 34, '이경민', 'ㅗ', '2020-12-05 (13:49)'),
(78, 35, '박보성', '테스트', '2020-12-07 (01:15)');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `feed`
--
ALTER TABLE `feed`
  ADD PRIMARY KEY (`number`);

--
-- 테이블의 인덱스 `project_user`
--
ALTER TABLE `project_user`
  ADD PRIMARY KEY (`number`);

--
-- 테이블의 인덱스 `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`number`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `feed`
--
ALTER TABLE `feed`
  MODIFY `number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- 테이블의 AUTO_INCREMENT `project_user`
--
ALTER TABLE `project_user`
  MODIFY `number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 테이블의 AUTO_INCREMENT `reply`
--
ALTER TABLE `reply`
  MODIFY `number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- 데이터베이스: `sample`
--
CREATE DATABASE IF NOT EXISTS `sample` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `sample`;

-- --------------------------------------------------------

--
-- 테이블 구조 `board`
--

CREATE TABLE `board` (
  `num` int(11) NOT NULL,
  `id` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) NOT NULL,
  `hit` int(11) NOT NULL,
  `file_name` char(40) DEFAULT NULL,
  `file_type` char(40) DEFAULT NULL,
  `file_copied` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `board`
--

INSERT INTO `board` (`num`, `id`, `name`, `subject`, `content`, `regist_day`, `hit`, `file_name`, `file_type`, `file_copied`) VALUES
(9, '111', '111', 'asd', 'asd', '2020-11-16 (03:31)', 14, '개발결과보고서.docx', 'application/vnd.openxmlformats-officedoc', '2020_11_20_10_29_23.docx'),
(10, '111', '111', '123', '123', '2020-11-16 (04:03)', 9, '', '', ''),
(11, '111', '111', 'ddd', 'ddd', '2020-12-03 (11:46)', 2, 'Coruscant-Wallpaper-4.jpg', 'image/jpeg', '2020_12_03_11_46_44.jpg');

-- --------------------------------------------------------

--
-- 테이블 구조 `friend`
--

CREATE TABLE `friend` (
  `num` int(11) NOT NULL,
  `name` char(20) NOT NULL,
  `tel` char(20) NOT NULL,
  `address` char(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `mem`
--

CREATE TABLE `mem` (
  `num` int(11) NOT NULL,
  `id` char(20) NOT NULL,
  `pass` char(20) NOT NULL,
  `name` char(20) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `email` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `member`
--

CREATE TABLE `member` (
  `num` int(11) NOT NULL,
  `id` char(20) NOT NULL,
  `name` char(20) NOT NULL,
  `gender` char(1) DEFAULT NULL,
  `post_num` char(8) DEFAULT NULL,
  `address` char(80) DEFAULT NULL,
  `tel` char(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `member`
--

INSERT INTO `member` (`num`, `id`, `name`, `gender`, `post_num`, `address`, `tel`, `age`) VALUES
(1, 'yjhwang', '황영주', 'M', '100-011', '서울시 중구 충무로1가', '234-8879', 35),
(2, 'khshul', '설기형', 'M', '607-010', '부산시 동래구 명륜동', '764-3784', 33),
(3, 'chpark', '박철호', 'M', '503-200', '광주시 남구 지석동', '298-9730', 34),
(4, 'shlee', '이상훈', 'M', '503-201', '광주시 남구 도금동', '838-4347', 32),
(5, 'jyjang', '장영숙', 'W', '606-065', '부산시 영도구 봉래동5가', '399-9809', 24),
(6, 'yjbae', '배용진', 'M', '122-014', '서울시 은평구 응암4동', '857-5683', 30),
(7, 'hbpark', '박혜빈', 'W', '427-760', '경기도 과천시 중앙동', '234-7677', 22),
(8, 'mskim', '김문수', 'M', '429-020', '경기도 시흥시 신천동', '370-6003', 63),
(9, 'bkcha', '차범길', 'M', '302-121', '대전시 서구 둔산1동', '432-9877', 49),
(10, 'kskim', '김길수', 'M', '440-747', '경기도 수원시 장안구 파장동', '324-5875', 54),
(11, 'srkim', '김수련', 'M', '704-701', '대구시 달서구 신당동', '987-3688', 23),
(12, 'shlee', '이성현', 'M', '441-081', '경기도 수원시 권선구 매산로1가', '243-6844', 36),
(13, 'hnjang', '정한나', 'W', '502-763', '광주시 서구 화정4동', '845-4547', 58),
(14, 'mylee', '이명연', 'W', '502-791', '광주시 서구 쌍촌동', '837-9432', 33),
(15, 'yskim', '김영숙', 'W', '429-010', '경기도 시흥시 대야동', '374-8438', 53),
(16, 'jekim', '김정은', 'W', '503-202', '광주시 남구 원산동', '347-8873', 29),
(17, 'yjko', '고영주', 'W', '122-020', '서울시 은평구 녹번동', '479-3874', 32),
(18, 'cyahn', '안철영', 'M', '122-030', '서울시 은평구 대조동', '347-4687', 34),
(19, 'jmkim', '김진모', 'M', '530-140', '전라남도 목포시 항동', '379-8349', 28),
(20, 'ycshul', '설영찬', 'M', '606-070', '부산시 영도구 청학동', '983-8748', 41),
(21, 'jjko', '고재진', 'M', '100-013', '서울시 중구 충무로3가', '836-4655', 28),
(22, 'hwlee', '이현우', 'M', '606-071', '부산시 영도구 청학1동', '346-8892', 32),
(23, 'cskang', '강찬숙', 'W', '668-890', '경상남도 남해군 설천면', '377-6879', 21),
(24, 'ypji', '지영필', 'M', '122-040', '서울시 은평구 불광동', '366-3747', 52),
(25, 'jbkim', '김진배', 'M', '427-600', '경기도 과천시 과천동', '382-4993', 47),
(26, 'jepark', '박지은', 'W', '670-800', '경상남도 거창군 거창읍', '328-8743', 26),
(27, 'jhlee', '이지현', 'W', '704-702', '대구시 달서구 월성동', '386-7988', 27),
(28, 'bykang', '강부영', 'M', '302-120', '대전시 서구 둔산동', '798-3243', 62),
(29, 'jymoon', '문진영', 'W', '302-122', '대전시 서구 둔산2동', '987-3248', 18),
(30, 'jyjun', '전지연', 'W', '100-012', '서울시 중구 충무로2가', '347-2236', 28),
(31, 'jkko', '고진길', 'M', '122-013', '서울시 은평구 응암3동', '234-7466', 27),
(32, 'myjung', '정명윤', 'M', '502-771', '광주시 서구 치평동', '374-8786', 47),
(33, 'jsyou', '유지수', 'W', '502-772', '광주시 서구 치평동', '309-3897', 49),
(34, 'dsshin', '신달성', 'W', '530-145', '전라남도 신안군 장산면', '399-8789', 53),
(35, 'sjshin', '신수진', 'W', '606-796', '부산시 영도구 봉래동5가', '389-8930', 47);

-- --------------------------------------------------------

--
-- 테이블 구조 `members`
--

CREATE TABLE `members` (
  `num` int(11) NOT NULL,
  `id` char(15) NOT NULL,
  `pass` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `email` char(80) DEFAULT NULL,
  `regist_day` char(20) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `ipddr` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `members`
--

INSERT INTO `members` (`num`, `id`, `pass`, `name`, `email`, `regist_day`, `level`, `point`, `ipddr`) VALUES
(3, '111', '111', '111', '111@111', '2020-11-11 (06:09)', 9, 1200, ''),
(4, '222', '222', '222', '222@222', '2020-11-11 (06:09)', 7, 0, ''),
(5, 'admin', '123', 'admin', 'asd@123123.com', '2020-11-15 (05:19)', 1, 100, ''),
(6, 'asd', 'asd', 'asd', 'asd@asd', '2020-11-29 (15:30)', 9, 0, '');

-- --------------------------------------------------------

--
-- 테이블 구조 `message`
--

CREATE TABLE `message` (
  `num` int(11) NOT NULL,
  `send_id` char(20) NOT NULL,
  `rv_id` char(20) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `message`
--

INSERT INTO `message` (`num`, `send_id`, `rv_id`, `subject`, `content`, `regist_day`) VALUES
(28, '111', '222', 'asd', 'asd', '2020-11-16 (03:59)'),
(29, 'test', '111', 'ㄴㅁㅇ', 'ㅁㄴㅇ', '2020-12-01 (12:56)');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `board`
--
ALTER TABLE `board`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `friend`
--
ALTER TABLE `friend`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `mem`
--
ALTER TABLE `mem`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`num`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `board`
--
ALTER TABLE `board`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 테이블의 AUTO_INCREMENT `friend`
--
ALTER TABLE `friend`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `member`
--
ALTER TABLE `member`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- 테이블의 AUTO_INCREMENT `members`
--
ALTER TABLE `members`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 테이블의 AUTO_INCREMENT `message`
--
ALTER TABLE `message`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- 데이터베이스: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
