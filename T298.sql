/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t298`;
CREATE DATABASE IF NOT EXISTS `t298` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t298`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/minyaowangzhan/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/minyaowangzhan/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/minyaowangzhan/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-03-04 13:41:24'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-03-04 13:41:24'),
	(5, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2022-03-04 13:41:24'),
	(6, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2022-03-04 13:41:24'),
	(7, 'gequ_types', '歌曲类型', 1, '歌曲类型1', NULL, NULL, '2022-03-04 13:41:24'),
	(8, 'gequ_types', '歌曲类型', 2, '歌曲类型2', NULL, NULL, '2022-03-04 13:41:24'),
	(9, 'gequ_types', '歌曲类型', 3, '歌曲类型3', NULL, NULL, '2022-03-04 13:41:24'),
	(11, 'gequ_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-03-04 13:41:24'),
	(12, 'gequ_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2022-03-04 13:41:24'),
	(13, 'gequ_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2022-03-04 13:41:24'),
	(17, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2022-04-08 01:05:58'),
	(18, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2022-04-08 01:05:58'),
	(19, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2022-04-08 01:09:16'),
	(20, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2022-04-08 01:09:16'),
	(21, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-04-08 01:09:31'),
	(22, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-04-08 01:09:31'),
	(23, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2022-04-08 01:09:31');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 3, NULL, '发布内容1', NULL, 1, '2022-04-08 01:32:06', '2022-04-08 01:32:06', '2022-04-08 01:32:06'),
	(2, '帖子标题2', 1, NULL, '发布内容2', NULL, 1, '2022-04-08 01:32:06', '2022-04-08 01:32:06', '2022-04-08 01:32:06'),
	(3, '帖子标题3', 1, NULL, '发布内容3', NULL, 1, '2022-04-08 01:32:06', '2022-04-08 01:32:06', '2022-04-08 01:32:06'),
	(4, '帖子标题4', 3, NULL, '发布内容4', NULL, 1, '2022-04-08 01:32:06', '2022-04-08 01:32:06', '2022-04-08 01:32:06'),
	(5, '帖子标题5', 2, NULL, '发布内容5', NULL, 1, '2022-04-08 01:32:06', '2022-04-08 01:32:06', '2022-04-08 01:32:06'),
	(6, NULL, 1, NULL, '论坛评论123', 5, 2, '2022-04-08 01:52:16', NULL, '2022-04-08 01:52:16'),
	(8, NULL, NULL, 1, '管理评论23', 5, 2, '2022-04-08 01:53:48', NULL, '2022-04-08 01:53:48'),
	(9, NULL, 1, NULL, '666', 5, 2, '2024-07-24 05:02:41', NULL, '2024-07-24 05:02:41');

DROP TABLE IF EXISTS `gequ`;
CREATE TABLE IF NOT EXISTS `gequ` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gequ_name` varchar(200) DEFAULT NULL COMMENT '歌名  Search111 ',
  `gequ_photo` varchar(200) DEFAULT NULL COMMENT '歌曲封面',
  `gequ_types` int DEFAULT NULL COMMENT '歌曲类型 Search111',
  `gequ_music` varchar(200) DEFAULT NULL COMMENT '歌曲文件 Search111 ',
  `zan_number` int DEFAULT NULL COMMENT '赞数量',
  `cai_number` int DEFAULT NULL COMMENT '踩数量',
  `gequ_clicknum` int DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `gequ_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `gequ_content` text COMMENT '歌曲简介 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='歌曲';

DELETE FROM `gequ`;
INSERT INTO `gequ` (`id`, `gequ_name`, `gequ_photo`, `gequ_types`, `gequ_music`, `zan_number`, `cai_number`, `gequ_clicknum`, `shangxia_types`, `gequ_delete`, `gequ_content`, `insert_time`, `create_time`) VALUES
	(1, '歌名1', 'http://localhost:8080/minyaowangzhan/upload/gequ1.jpg', 3, 'http://localhost:8080/minyaowangzhan/upload/music.mp3', 457, 266, 242, 1, 1, '歌曲简介1', '2022-04-08 01:32:06', '2022-04-08 01:32:06'),
	(2, '歌名2', 'http://localhost:8080/minyaowangzhan/upload/gequ2.jpg', 3, 'http://localhost:8080/minyaowangzhan/upload/music.mp3', 64, 330, 459, 1, 1, '歌曲简介2', '2022-04-08 01:32:06', '2022-04-08 01:32:06'),
	(3, '歌名3', 'http://localhost:8080/minyaowangzhan/upload/gequ3.jpg', 1, 'http://localhost:8080/minyaowangzhan/upload/music.mp3', 203, 192, 494, 1, 1, '歌曲简介3', '2022-04-08 01:32:06', '2022-04-08 01:32:06'),
	(4, '歌名4', 'http://localhost:8080/minyaowangzhan/upload/gequ4.jpg', 2, 'http://localhost:8080/minyaowangzhan/upload/music.mp3', 81, 490, 136, 1, 1, '歌曲简介4', '2022-04-08 01:32:06', '2022-04-08 01:32:06'),
	(5, '歌名5', 'http://localhost:8080/minyaowangzhan/upload/gequ5.jpg', 2, 'http://localhost:8080/minyaowangzhan/upload/music.mp3', 182, 92, 419, 1, 1, '歌曲简介5', '2022-04-08 01:32:06', '2022-04-08 01:32:06');

DROP TABLE IF EXISTS `gequ_collection`;
CREATE TABLE IF NOT EXISTS `gequ_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gequ_id` int DEFAULT NULL COMMENT '歌曲',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `gequ_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COMMENT='歌曲收藏';

DELETE FROM `gequ_collection`;
INSERT INTO `gequ_collection` (`id`, `gequ_id`, `yonghu_id`, `gequ_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 1, '2022-04-08 01:32:06', '2022-04-08 01:32:06'),
	(3, 3, 2, 1, '2022-04-08 01:32:06', '2022-04-08 01:32:06'),
	(4, 4, 2, 1, '2022-04-08 01:32:06', '2022-04-08 01:32:06'),
	(5, 5, 1, 1, '2022-04-08 01:32:06', '2022-04-08 01:32:06'),
	(11, 5, 1, 2, '2022-04-08 01:51:49', '2022-04-08 01:51:49'),
	(12, 4, 1, 1, '2024-07-24 05:02:51', '2024-07-24 05:02:51');

DROP TABLE IF EXISTS `gequ_liuyan`;
CREATE TABLE IF NOT EXISTS `gequ_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gequ_id` int DEFAULT NULL COMMENT '歌曲',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `gequ_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='歌曲留言';

DELETE FROM `gequ_liuyan`;
INSERT INTO `gequ_liuyan` (`id`, `gequ_id`, `yonghu_id`, `gequ_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 2, '留言内容1', '2022-04-08 01:32:06', '回复信息1', '2022-04-08 01:32:06', '2022-04-08 01:32:06'),
	(2, 2, 2, '留言内容2', '2022-04-08 01:32:06', '回复信息2', '2022-04-08 01:32:06', '2022-04-08 01:32:06'),
	(3, 3, 3, '留言内容3', '2022-04-08 01:32:06', '回复信息3', '2022-04-08 01:32:06', '2022-04-08 01:32:06'),
	(4, 4, 2, '留言内容4', '2022-04-08 01:32:06', '回复信息4', '2022-04-08 01:32:06', '2022-04-08 01:32:06'),
	(5, 5, 3, '留言内容5', '2022-04-08 01:32:06', '回复信息5', '2022-04-08 01:32:06', '2022-04-08 01:32:06'),
	(7, 5, 1, '添加留言123', '2022-04-08 01:51:59', '管理回复123', '2022-04-08 01:54:03', '2022-04-08 01:51:59');

DROP TABLE IF EXISTS `liuyan`;
CREATE TABLE IF NOT EXISTS `liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='留言版';

DELETE FROM `liuyan`;
INSERT INTO `liuyan` (`id`, `yonghu_id`, `liuyan_name`, `liuyan_text`, `reply_text`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 3, '留言标题1', '留言内容1', '回复信息1', '2022-04-08 01:32:06', '2022-04-08 01:32:06', '2022-04-08 01:32:06'),
	(2, 2, '留言标题2', '留言内容2', '回复信息2', '2022-04-08 01:32:06', '2022-04-08 01:32:06', '2022-04-08 01:32:06'),
	(3, 1, '留言标题3', '留言内容3', '回复信息3', '2022-04-08 01:32:06', '2022-04-08 01:32:06', '2022-04-08 01:32:06'),
	(4, 3, '留言标题4', '留言内容4', '回复信息4', '2022-04-08 01:32:06', '2022-04-08 01:32:06', '2022-04-08 01:32:06'),
	(5, 2, '留言标题5', '留言内容5', '回复信息5', '2022-04-08 01:32:06', '2022-04-08 01:32:06', '2022-04-08 01:32:06'),
	(7, 1, '标题123', '内容123', '管理回复123', '2022-04-08 01:52:37', '2022-04-08 01:54:16', '2022-04-08 01:52:37'),
	(8, 1, '666', '666', NULL, '2024-07-24 05:02:56', NULL, '2024-07-24 05:02:56');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 2, 'http://localhost:8080/minyaowangzhan/upload/news1.jpg', '2022-04-08 01:32:06', '公告详情1', '2022-04-08 01:32:06'),
	(2, '公告标题2', 1, 'http://localhost:8080/minyaowangzhan/upload/news2.jpg', '2022-04-08 01:32:06', '公告详情2', '2022-04-08 01:32:06'),
	(3, '公告标题3', 1, 'http://localhost:8080/minyaowangzhan/upload/news3.jpg', '2022-04-08 01:32:06', '公告详情3', '2022-04-08 01:32:06'),
	(4, '公告标题4', 1, 'http://localhost:8080/minyaowangzhan/upload/news4.jpg', '2022-04-08 01:32:06', '公告详情4', '2022-04-08 01:32:06'),
	(5, '公告标题5', 2, 'http://localhost:8080/minyaowangzhan/upload/news5.jpg', '2022-04-08 01:32:06', '公告详情5', '2022-04-08 01:32:06');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(2, 1, 'a1', 'yonghu', '用户', 'jazxk18r9vcb80fyji618jxuyal842w0', '2022-04-08 01:37:28', '2024-07-24 06:02:28'),
	(3, 1, 'admin', 'users', '管理员', 'l1ac5vg4caz9l7s6nevnz3kwv3u2qvp4', '2022-04-08 01:53:33', '2024-07-24 06:01:08');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/minyaowangzhan/upload/yonghu1.jpg', 1, '1@qq.com', '2022-04-08 01:32:06'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/minyaowangzhan/upload/yonghu2.jpg', 1, '2@qq.com', '2022-04-08 01:32:06'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/minyaowangzhan/upload/yonghu3.jpg', 2, '3@qq.com', '2022-04-08 01:32:06');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
