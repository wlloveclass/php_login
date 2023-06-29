-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2022-12-05 11:59:46
-- 服务器版本： 5.7.26
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `students`
--

-- --------------------------------------------------------

--
-- 表的结构 `cmt`
--

CREATE TABLE `cmt` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `model`
--

CREATE TABLE `model` (
  `ID` int(11) NOT NULL COMMENT 'id',
  `m1` char(30) DEFAULT NULL,
  `m2` char(30) DEFAULT NULL,
  `m3` char(30) DEFAULT NULL,
  `m4` char(30) DEFAULT NULL,
  `m5` char(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `model`
--

INSERT INTO `model` (`ID`, `m1`, `m2`, `m3`, `m4`, `m5`) VALUES
(1, '捞人', '找物', '查询', '吐槽', '表白');

-- --------------------------------------------------------

--
-- 表的结构 `post`
--

CREATE TABLE `post` (
  `ID` int(11) NOT NULL COMMENT '文章索引值ID',
  `Sno` char(16) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户账号',
  `content` text CHARACTER SET gb2312 NOT NULL COMMENT '文章内容',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '添加时间',
  `Sname` char(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户昵称',
  `uimg` text COLLATE utf8_unicode_ci COMMENT '头像',
  `reply_id` char(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '评论人的ID',
  `pictures` char(150) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '图片',
  `comment_num` int(11) DEFAULT '0' COMMENT '评论量',
  `praise_num` int(11) DEFAULT '0' COMMENT '点赞量',
  `post_head` char(20) COLLATE utf8_unicode_ci DEFAULT '吐槽' COMMENT '文章板块'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `post`
--

INSERT INTO `post` (`ID`, `Sno`, `content`, `addtime`, `Sname`, `uimg`, `reply_id`, `pictures`, `comment_num`, `praise_num`, `post_head`) VALUES
(1, '111', '我好帅', '2022-09-12 17:53:43', '帅的被人砍', '1001.jpg', NULL, '1001.jpg', 0, 112, '抱怨'),
(2, '123', '我我我', '2022-09-12 17:53:43', '小神仙', '小神仙.jpg', NULL, '盖聂.jpg', 0, 0, '无语'),
(3, '1234', '下班了，哈哈哈', '2022-09-12 17:53:43', '派蒙不萌了', '小可爱.jpg', NULL, '犬夜叉.jpg', 1, 3, '开心'),
(4, '321', '因为遇见', '2022-09-13 09:39:19', '小呆瓜', '猫哥.jpg', NULL, '钟离.jpg,盖聂.jpg,犬夜叉.jpg,前端.jpg,小布丁.jpg,头像.jpg', 2, 1, '发呆'),
(5, '318255030244', '加油！', '2022-09-14 02:10:44', '小小布丁', '考研.jpg', NULL, '稻田.jpg,小多啦.jpg,烦闷.jpg,时间.jpg', 0, 0, '加油哟'),
(6, '318255030245', '哈哈哈哈', '2022-09-14 12:10:00', '丁丁猫儿', '头像.jpg', NULL, '烦闷.jpg,水果.jpg', 0, 0, NULL),
(7, '318255030245', '哈哈哈哈', '2022-09-14 12:10:00', '丁丁猫儿', '头像.jpg', NULL, '烦闷.jpg,水果.jpg', 0, 0, NULL),
(8, '318255030246', '笑死我了', '2022-09-14 13:00:00', '小小布丁儿', '1001.jpg', NULL, '猫哥.jpg', 0, 0, '加油哟'),
(2083, '', '是是', '2022-09-15 02:10:17', '', '', NULL, '', 0, 0, '吐槽'),
(2125, '', '你好啊', '2022-09-15 02:22:47', '', '', NULL, '', 0, 0, '吐槽'),
(2136, '', '呵呵啊', '2022-09-15 02:22:58', '', '', NULL, '', 0, 0, '吐槽'),
(2145, '20220620', '我来了', '2022-09-15 04:31:56', '帅的被人砍', '1001.jpg', NULL, '', 0, 0, '吐槽'),
(2146, '20220620', '', '2022-09-15 04:33:55', '帅的被人砍', '1001.jpg', NULL, '', 0, 0, '吐槽'),
(2150, '20220620', '呵呵是', '2022-09-15 11:56:15', '帅的被人砍', '1001.jpg', NULL, '', 0, 0, '捞人'),
(2101, '20220620', '45432', '2022-09-15 04:34:09', '帅的被人砍', '1001.jpg', NULL, '', 0, 0, '吐槽'),
(2121, '20220620', '喔喔 我啊', '2022-09-15 12:05:39', '帅的被人砍', '1001.jpg', NULL, '', 0, 0, '表白'),
(2116, '20220620', '', '2022-09-15 12:05:39', '帅的被人砍', '1001.jpg', NULL, '', 0, 0, '表白'),
(2109, '20220620', '', '2022-09-15 04:44:07', '帅的被人砍', '1001.jpg', NULL, '', 0, 0, '吐槽'),
(2153, '20220620', '', '2022-09-15 11:56:15', '帅的被人砍', '1001.jpg', NULL, '2022-9-15 12 44 51微信图片_20211228200743.jpg', 0, 0, '询问'),
(2114, '20220620', '我是啊', '2022-09-15 12:05:39', '帅的被人砍', '1001.jpg', NULL, '2022-9-15 12 49 7微信图片_20211228200727.jpg', 0, 0, '表白'),
(2167, '20220620', '你好啊', '2022-09-15 11:56:15', '帅的被人砍', '1001.jpg', NULL, '2022-9-15 12 52 57微信图片_20211228200743.jpg', 0, 0, '表白'),
(2142, '20220620', '', '2022-09-15 04:58:26', '帅的被人砍', '1001.jpg', NULL, '', 0, 0, '吐槽'),
(2073, '20220620', '', '2022-09-15 05:00:14', '帅的被人砍', '1001.jpg', NULL, '', 0, 0, '吐槽'),
(2078, '20220620', '', '2022-09-15 05:00:19', '帅的被人砍', '1001.jpg', NULL, '', 0, 0, '吐槽'),
(2117, '20220620', '', '2022-09-15 12:05:39', '帅的被人砍', '1001.jpg', NULL, '', 0, 0, '表白'),
(2065, '20220620', '人', '2022-09-15 05:02:04', '帅的被人砍', '1001.jpg', NULL, '', 0, 0, '吐槽'),
(2111, '20220620', '', '2022-09-15 05:02:50', '帅的被人砍', '1001.jpg', NULL, '2022-9-15 13 2 50xm.jpg', 0, 0, '吐槽'),
(2130, '20220620', '444', '2022-09-15 06:25:45', '帅的被人砍', '1001.jpg', NULL, '', 0, 0, '吐槽'),
(2123, '20220620', '54564', '2022-09-15 12:05:39', '帅的被人砍', '1001.jpg', NULL, '', 0, 0, '表白'),
(2118, '20220620', '几个', '2022-09-15 12:05:39', '帅的被人砍', '1001.jpg', NULL, '', 0, 0, '表白'),
(2127, '20220620', '', '2022-09-15 06:35:32', '帅的被人砍', '1001.jpg', NULL, '2022-9-15 14 35 32微信图片_20211228200743.jpg', 0, 0, '吐槽'),
(2135, '20220620', '是是', '2022-09-15 06:48:27', '帅的被人砍', '1001.jpg', NULL, '2022-9-15 14 48 27微信图片_20211228200743.jpg', 0, 0, '吐槽'),
(2149, '20220620', '', '2022-09-15 06:49:40', '帅的被人砍', '1001.jpg', NULL, '2022-9-15 14 49 40微信图片_20211228200727.jpg', 0, 0, '吐槽'),
(2163, '20220620', '', '2022-09-15 11:56:15', '帅的被人砍', '1001.jpg', NULL, '2022-9-15 14 51 52微信图片_20211228200743.jpg', 0, 0, '表白'),
(2126, '20220620', '', '2022-09-15 06:52:14', '帅的被人砍', '1001.jpg', NULL, '2022-9-15 14 52 14xm.jpg', 0, 0, '吐槽'),
(2137, '20220620', '十大', '2022-09-15 06:53:24', '帅的被人砍', '1001.jpg', NULL, '2022-9-15 14 53 24微信图片_20211228200738.jpg', 0, 0, '吐槽'),
(2108, '20220620', '', '2022-09-16 11:01:41', '帅的被人砍', '1001.jpg', NULL, '2022-9-16 19 1 41微信图片_20211228200743.jpg', 0, 0, '吐槽'),
(2105, '20220620', '', '2022-09-16 11:05:34', '帅的被人砍', '1001.jpg', NULL, '2022-9-16 19 5 34xm.jpg', 0, 0, '吐槽'),
(2077, '20220620', '', '2022-09-16 11:10:01', '帅的被人砍', '1001.jpg', NULL, '2022-9-16 19 10 1xm.jpg', 0, 0, '吐槽'),
(2087, '20220620', '', '2022-09-16 11:17:04', '帅的被人砍', '1001.jpg', NULL, '2022-9-16 19 17 4微信图片_20211228200743.jpg', 0, 0, '吐槽'),
(2141, '20220620', '', '2022-09-16 11:20:55', '帅的被人砍', '1001.jpg', NULL, '2022-9-16 19 20 55xm.jpg', 0, 0, '吐槽'),
(2090, '20220620', '', '2022-09-16 11:22:02', '帅的被人砍', '1001.jpg', NULL, '2022-9-16 19 22 2微信图片_20211228200727.jpg', 0, 0, '吐槽'),
(2148, '20220620', '', '2022-09-16 11:23:59', '帅的被人砍', '1001.jpg', NULL, '2022-9-16 19 23 59微信图片_20211228200738.jpg', 0, 0, '吐槽'),
(2131, '20220620', '', '2022-09-16 12:10:54', '帅的被人砍', '1001.jpg', NULL, '2022-9-16 20 10 52xm.jpg', 0, 0, '吐槽'),
(2079, '20220620', '333', '2022-09-16 12:11:01', '帅的被人砍', '1001.jpg', NULL, '2022-9-16 20 10 52xm.jpg', 0, 0, '吐槽'),
(2091, '20220620', '445', '2022-09-16 12:11:13', '帅的被人砍', '1001.jpg', NULL, '2022-9-16 20 10 52xm.jpg', 0, 0, '吐槽'),
(2151, '20220625', '12354', '2022-09-16 12:36:48', '摇耳朵的小布丁', '头像.jpg', NULL, '', 0, 0, '吐槽'),
(2158, '20220625', '大大', '2022-09-16 12:36:55', '摇耳朵的小布丁', '头像.jpg', NULL, '', 0, 0, '吐槽'),
(2119, '20220625', '是', '2022-09-17 07:14:42', '摇耳朵的小布丁', '头像.jpg', NULL, '2022-9-17 15 14 381.gif', 0, 0, '吐槽'),
(2115, '19205112', '', '2022-11-29 19:42:07', 'renyihui', '', NULL, '2022-11-30 3 41 58测试图.jpg', 0, 0, '吐槽'),
(2120, '19205112', 'gsdfgf dgfsdgfd', '2022-12-01 08:42:27', 'renyihui', '', NULL, '', 0, 0, '吐槽'),
(2094, '19205112', 'saefdfsdf', '2022-12-01 08:43:00', 'renyihui', '', NULL, '', 0, 0, '吐槽');

-- --------------------------------------------------------

--
-- 表的结构 `praise`
--

CREATE TABLE `praise` (
  `Sno` char(16) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户学号/账号',
  `post_ID` int(11) DEFAULT NULL COMMENT '=post表的ID'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `Sno` char(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '学号',
  `uimg` char(150) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '头像',
  `Sname` char(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '昵称',
  `Ssex` char(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '性别',
  `Sage` int(3) DEFAULT NULL COMMENT '年龄',
  `password` char(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '注册时间',
  `QQ` int(20) DEFAULT NULL,
  `Email` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_num` int(12) DEFAULT NULL COMMENT '发帖数量',
  `follows_num` int(12) DEFAULT NULL COMMENT '关注数量',
  `fans_num` int(12) DEFAULT NULL COMMENT '粉丝数量',
  `sign_in` int(11) DEFAULT NULL COMMENT '本月签到次数',
  `sign_time` date DEFAULT NULL COMMENT '签到时间',
  `classes` char(30) COLLATE utf8_unicode_ci DEFAULT '计算机系'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`Sno`, `uimg`, `Sname`, `Ssex`, `Sage`, `password`, `addtime`, `QQ`, `Email`, `post_num`, `follows_num`, `fans_num`, `sign_in`, `sign_time`, `classes`) VALUES
('20220620', '1001.jpg', '帅的被人砍', '男', 21, '123000', '2022-11-29 14:32:01', 0, '', 0, 0, 0, 0, NULL, '外语系'),
('20220621', '小神仙.jpg', '神棍', '女', 18, '123000', '2022-11-30 08:29:55', 0, '', 0, 0, 0, 0, NULL, '外语系'),
('20220622', '小布丁.jpg', '小布丁', '女', 21, '123000', '2022-11-29 14:17:44', 0, '', 0, 0, 0, 0, NULL, '人文与艺术系'),
('20220625', '头像.jpg', '摇耳朵的小布丁', '女', 19, '123000', '2022-11-29 14:31:28', 0, '', 0, 0, 0, 0, NULL, '计算机系'),
('19205117', '小可爱.jpg', 'root', '女', 22, '123456', '2022-11-29 14:31:39', 0, '', 0, 0, 0, 0, NULL, '计算机系'),
('19205112', NULL, 'renyihui', NULL, NULL, 'A19205112', '2022-12-01 08:42:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '计算机系');

-- --------------------------------------------------------

--
-- 表的结构 `useradvice`
--

CREATE TABLE `useradvice` (
  `ID` int(11) NOT NULL,
  `Sno` int(11) NOT NULL,
  `Sname` char(50) NOT NULL,
  `classes` char(30) NOT NULL,
  `content` text NOT NULL,
  `sendtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `useradvice`
--

INSERT INTO `useradvice` (`ID`, `Sno`, `Sname`, `classes`, `content`, `sendtime`) VALUES
(1, 20220623, '凝光', '人文与艺术系', '我账号被盗了', '2022-11-29 15:10:43'),
(2, 20220615, '小脑虎', '园林与艺术系', '忘记密码了，请求找回密码', '2022-11-29 15:10:43'),
(3, 20220616, '大哆哆的喵', '马克思学院', '希望留言板能够上新考研模块', '2022-11-29 15:10:43');

-- --------------------------------------------------------

--
-- 表的结构 `user_friends`
--

CREATE TABLE `user_friends` (
  `ID` int(11) NOT NULL,
  `Sno` char(16) COLLATE utf8_unicode_ci NOT NULL COMMENT '来自user表Sno',
  `friend_id` int(11) NOT NULL COMMENT '来自user表Sno',
  `status` tinyint(1) NOT NULL COMMENT '0：未关注；1：已关注',
  `addtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转储表的索引
--

--
-- 表的索引 `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`ID`);

--
-- 表的索引 `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`ID`);

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Sno`);

--
-- 表的索引 `useradvice`
--
ALTER TABLE `useradvice`
  ADD PRIMARY KEY (`ID`);

--
-- 表的索引 `user_friends`
--
ALTER TABLE `user_friends`
  ADD PRIMARY KEY (`ID`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `model`
--
ALTER TABLE `model`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `post`
--
ALTER TABLE `post`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章索引值ID', AUTO_INCREMENT=2168;

--
-- 使用表AUTO_INCREMENT `useradvice`
--
ALTER TABLE `useradvice`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `user_friends`
--
ALTER TABLE `user_friends`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
