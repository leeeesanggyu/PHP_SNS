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


