/*
Navicat MySQL Data Transfer

Source Server         : 服务器
Source Server Version : 50718
Source Host           : 115.159.36.234:3306
Source Database       : fenxiao

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2017-06-18 19:23:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createDate` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `version` int(11) NOT NULL,
  `juri` int(11) NOT NULL DEFAULT '0',
  `lastLoginIp` varchar(255) DEFAULT NULL,
  `lastLoginTime` datetime DEFAULT NULL,
  `loginCount` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '2014-10-25 20:28:38', '\0', '159', '1', '115.60.162.139', '2017-06-14 19:53:54', '142', 'admin', '5b985688cf910ef368ca8f135b83b325', '1');

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createDate` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `version` int(11) NOT NULL,
  `content` text,
  `status` int(11) NOT NULL DEFAULT '0',
  `summary` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `article_cate` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKD458CCF6D5046BB1` (`article_cate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------

-- ----------------------------
-- Table structure for article_cate
-- ----------------------------
DROP TABLE IF EXISTS `article_cate`;
CREATE TABLE `article_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createDate` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `version` int(11) NOT NULL,
  `fatherId` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_cate
-- ----------------------------

-- ----------------------------
-- Table structure for commission
-- ----------------------------
DROP TABLE IF EXISTS `commission`;
CREATE TABLE `commission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createDate` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `version` int(11) NOT NULL,
  `lowerLevelNo` varchar(255) DEFAULT NULL,
  `money` double DEFAULT NULL,
  `no` varchar(255) DEFAULT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3CB17CEB3519E4C2` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commission
-- ----------------------------

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createDate` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `version` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enAddress` varchar(255) DEFAULT NULL,
  `hrEmail` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `sendEmail` varchar(255) DEFAULT NULL,
  `sendEmailPass` varchar(255) DEFAULT NULL,
  `sendEmailSmtp` varchar(255) DEFAULT NULL,
  `siteDescription` varchar(255) DEFAULT NULL,
  `siteEnDescription` varchar(255) DEFAULT NULL,
  `siteEnKeys` varchar(255) DEFAULT NULL,
  `siteEnName` varchar(255) DEFAULT NULL,
  `siteKeys` varchar(255) DEFAULT NULL,
  `siteName` varchar(255) DEFAULT NULL,
  `siteUrl` varchar(255) DEFAULT NULL,
  `weibo` varchar(255) DEFAULT NULL,
  `weixin` varchar(255) DEFAULT NULL,
  `zixunEmail` varchar(255) DEFAULT NULL,
  `firstLevel` double DEFAULT NULL,
  `secondLevel` double DEFAULT NULL,
  `thirdLevel` double DEFAULT NULL,
  `downloadUrl` varchar(255) DEFAULT NULL,
  `alipayKey` varchar(255) DEFAULT NULL,
  `alipayPartner` varchar(255) DEFAULT NULL,
  `alipaySellerEmail` varchar(255) DEFAULT NULL,
  `onlinePayIsOpen` int(11) DEFAULT NULL,
  `rechargeCardIsOpen` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', '2015-06-14 20:42:42', '\0', '13', '0', null, '0', '0', 'upload/20170519/06d926a3-f40d-4b5d-958d-92ed862e5527.png', '0', '0', null, null, null, '寻师宝典', '0', '0', '0', '寻师宝典', '寻师宝典', 'http://www.xunshibaodian.com/', null, 'upload/20170519/22d2baa3-bfbe-4a81-bf10-94d058bd2fa7.jpg', '0', '0.01', '0.01', '0.01', '', '', '', '', '1', '1');

-- ----------------------------
-- Table structure for financial
-- ----------------------------
DROP TABLE IF EXISTS `financial`;
CREATE TABLE `financial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createDate` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `version` int(11) NOT NULL,
  `balance` double DEFAULT NULL,
  `money` double DEFAULT NULL,
  `no` varchar(255) DEFAULT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `payment` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK154FDC893519E4C2` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of financial
-- ----------------------------

-- ----------------------------
-- Table structure for kami
-- ----------------------------
DROP TABLE IF EXISTS `kami`;
CREATE TABLE `kami` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createDate` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `version` int(11) NOT NULL,
  `no` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `saleTime` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `product` int(11) DEFAULT NULL,
  `ordersNo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK321D725CEC6D32` (`product`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kami
-- ----------------------------

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createDate` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `version` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `reply` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createDate` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `version` int(11) NOT NULL,
  `money` double DEFAULT NULL,
  `no` varchar(255) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productNum` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `productMoney` double DEFAULT NULL,
  `payDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKC3DF62E53519E4C2` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for phone_validate_code
-- ----------------------------
DROP TABLE IF EXISTS `phone_validate_code`;
CREATE TABLE `phone_validate_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createDate` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `version` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phone_validate_code
-- ----------------------------

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createDate` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `version` int(11) NOT NULL,
  `content` text,
  `picture` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `product_cate` int(11) DEFAULT NULL,
  `bills` double DEFAULT NULL,
  `money` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKED8DCCEF9F4FDAD1` (`product_cate`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '2017-05-19 16:36:35', '\0', '0', '<p>\r\n	<span><span style=\"font-size:16px;\">杨时</span></span>\r\n</p>\r\n<p>\r\n	<span><span style=\"font-size:16px;\">男</span></span>\r\n</p>\r\n<p>\r\n	<span><span style=\"font-size:16px;\"><span></span>华北水利水电大学（龙子湖校区）</span></span><span><span style=\"font-size:16px;\">硕士在读</span></span>\r\n</p>\r\n<p>\r\n	<span><span style=\"font-size:16px;\">科目：初</span></span><span><span style=\"font-size:16px;\">高中政治或语文</span></span>\r\n</p>\r\n<p>\r\n	<span><span style=\"font-size:16px;\">课时费：50元/h</span></span>\r\n</p>\r\n<p>\r\n	<span><span style=\"font-size:16px;\">电话：18785546331<br />\r\n</span></span>\r\n</p>', 'upload/20170519/06e39000-fdbd-479c-8981-a182d68af630.jpg', '初高中政治或语文', '1', '1', '1');
INSERT INTO `product` VALUES ('2', '2017-05-19 16:38:49', '\0', '1', '<p>\r\n	<span style=\"font-size:16px;\"><span style=\"font-size:16px;\"></span>程博</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">男</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">华北水利水电大学（龙子湖校区）</span><span style=\"font-size:16px;\"> 大一学生</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">科目：英语</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">课时费：20元/h</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">联系方式：QQ：535462614&nbsp;&nbsp; 微信17321457110</span> \r\n</p>', 'upload/20170519/5390e916-2e8a-4a60-a90f-3a83f90afe3a.jpg', '英语', '1', '1', '1');
INSERT INTO `product` VALUES ('3', '2017-05-19 16:41:05', '\0', '1', '<p>\r\n	<span style=\"font-size:16px;\"><span style=\"font-size:16px;\"></span>杨旭辉</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">男</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">华北水利水电大学（龙子湖校区）</span> <span style=\"font-size:16px;\">大四学生</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">科目：英语、数学、高中理科 等</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">课时费：20元/h</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">电话：13298310562</span> \r\n</p>', 'upload/20170519/6adf4f0f-56c6-4ddf-b06d-8731011de670.jpg', '英语、数学、高中理科 等', '1', '1', '1');
INSERT INTO `product` VALUES ('4', '2017-05-19 16:43:32', '\0', '1', '<p>\r\n	<span style=\"font-size:16px;\">张云龙</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">男</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">华北水利水电大学（龙子湖校区）</span><span style=\"font-size:16px;\"> 大一学生</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">科目：初中数学、物理、化学</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">课时费：20元/h</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">微信：a846969013 电话：15036957273</span> \r\n</p>', 'upload/20170519/503353ae-319b-4f7d-99b4-a095ef116988.jpg', '初中数学、物理、化学', '1', '1', '1');
INSERT INTO `product` VALUES ('5', '2017-05-19 16:47:39', '\0', '0', '<p>\r\n	<span style=\"font-size:16px;\">焦顺丽</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">女</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">华北水利水电大学（龙子湖校区）大三学生</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">科目：小学 语数外</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">课时费：面议</span>\r\n</p>\r\n<p>\r\n	<span></span><span style=\"font-size:16px;\">电话：18568233605</span>\r\n</p>', 'upload/20170519/81082ea6-ce6b-4b92-8e69-23c064f9149e.jpg', '小学 语数外', '1', '1', '1');
INSERT INTO `product` VALUES ('6', '2017-05-19 16:49:59', '\0', '0', '<p>\r\n	<span style=\"font-size:16px;\">李琳</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">女</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">华北水利水电大学（龙子湖校区）大二学生</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">科目：小学初中高一 数学</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">课时费：40元/h</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">电话：18625952716</span>\r\n</p>', 'upload/20170519/f7f3ac6b-6fec-4d06-897f-d5e5b43a25e1.jpg', '小学初中高一 数学', '1', '1', '1');
INSERT INTO `product` VALUES ('7', '2017-05-19 16:51:44', '\0', '0', '<p>\r\n	涂帅波\r\n</p>\r\n<p>\r\n	男\r\n</p>\r\n<p>\r\n	华北水利水电大学（龙子湖校区）大一学生\r\n</p>\r\n<p>\r\n	科目：数学\r\n</p>\r\n<p>\r\n	课时费：35元/h\r\n</p>\r\n<p>\r\n	电话：17788170094\r\n</p>', 'upload/20170519/16e68ebd-b791-414e-af64-2ffb27741fad.jpg', '数学', '1', '1', '1');
INSERT INTO `product` VALUES ('8', '2017-05-19 16:53:40', '\0', '0', '<p>\r\n	<span style=\"font-size:16px;\">林晓恒</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">男</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">华北水利水电大学（龙子湖校区）大一学生</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">科目：语文 英语</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">课时费：30元/h</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">电话：15738801727</span>\r\n</p>', 'upload/20170519/c41eb625-276f-496c-8979-d26293c59419.jpg', '语文 英语', '1', '1', '1');
INSERT INTO `product` VALUES ('9', '2017-05-19 16:56:15', '\0', '0', '<p>\r\n	<span style=\"font-size:16px;\">宋晓娜</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">女</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">郑州升达经贸管理学院</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">科目：英语</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">课时费：30元/h</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">电话：13017677359</span>\r\n</p>', 'upload/20170519/e74be0f0-22c3-4a7a-b063-68d87a8cc040.jpg', '英语', '1', '1', '1');
INSERT INTO `product` VALUES ('10', '2017-05-19 16:58:50', '\0', '0', '<p>\r\n	<span style=\"font-size:16px;\">王胜楠&nbsp;</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">女</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">华北水利水电大学（龙子湖校区）大三学生</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">科目：小学、初中英语</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">课时费:30-40元/h</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">电话：13071054205</span>\r\n</p>', 'upload/20170519/584a5ed4-21b5-4267-95d6-0ad19b6f906d.jpg', '小学、初中 英语', '1', '1', '1');
INSERT INTO `product` VALUES ('11', '2017-05-19 17:00:22', '\0', '0', '<p>\r\n	<span style=\"font-size:16px;\">赵理想</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">女</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">华北水利水电大学（龙子湖校区</span><span style=\"font-size:16px;\">）</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">科目：英语</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">课时费：50元/h</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">微信：zz0209520 电话：15890163319</span>\r\n</p>', 'upload/20170519/cee85275-64fb-44b6-8272-a341eea0656c.jpg', '英语', '1', '1', '1');
INSERT INTO `product` VALUES ('12', '2017-05-19 17:02:07', '\0', '0', '<p>\r\n	<span style=\"font-size:16px;\">赵彩瑜</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">女</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">华北水利水电大学（龙子湖校区）大三学生</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">科目：英语</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">课时费：50-80/h</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">电话：15938748039</span>\r\n</p>', 'upload/20170519/70bf5d8f-2c9d-44c6-9fc3-cb881d31c154.jpg', '英语', '1', '1', '1');
INSERT INTO `product` VALUES ('13', '2017-05-19 17:04:17', '\0', '0', '<p>\r\n	<span style=\"font-size:16px;\">杨洁</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">女</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">华北水利水电大学（龙子湖校区）大三学生</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">科目：语文 英语 日语</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">课时费：50元/h</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">电话：18238476119</span>\r\n</p>', 'upload/20170519/f41155bc-a20e-4d52-87a3-c712c0300bbc.jpg', '语文 英语 日语', '1', '1', '1');
INSERT INTO `product` VALUES ('14', '2017-05-19 17:06:24', '\0', '1', '<p>\r\n	<span style=\"font-size:16px;\">秦云月</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">女</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">华北水利水电大学（龙子湖校区）</span><span style=\"font-size:16px;\"> 研一</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">科目：数学 英语</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">课时费：40元/h</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">电话：18300673375</span> \r\n</p>', 'upload/20170519/fda611be-d59e-4427-bdf6-9cce061f96b2.jpg', '数学 英语', '1', '1', '1');
INSERT INTO `product` VALUES ('15', '2017-05-19 17:08:47', '\0', '0', '<p>\r\n	<span style=\"font-size:16px;\">魏姗</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">女</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">华北水利水电大学（龙子湖校区）大一学生</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">科目：英语</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">课时费：面议</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">电话：18339266028</span>\r\n</p>', 'upload/20170519/22a79926-0fa8-47aa-917a-f62c7de79e26.jpg', '英语', '1', '1', '1');
INSERT INTO `product` VALUES ('16', '2017-05-19 17:10:56', '\0', '0', '<p>\r\n	<span style=\"font-size:16px;\">陈晨</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">女</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">华北水利水电大学（龙子湖校区）研一</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">科目：英语</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">课时费：小学70元/h 初中100元/h 高中120元/h</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">电话：15538121416</span>\r\n</p>', 'upload/20170519/0fec94ae-99d8-41e4-8c8d-788d31c580a1.jpg', '英语', '1', '1', '1');
INSERT INTO `product` VALUES ('17', '2017-05-19 17:15:37', '\0', '0', '<p>\r\n	<span style=\"font-size:16px;\">赵飞燕</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">女</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">华北水利水电大学 数学院（龙子湖校区）</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">科目：数学</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">课时费：50元/h</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">电话：18338071610</span>\r\n</p>', 'upload/20170519/f227e952-8191-43ac-9235-b8ba161db236.jpg', '数学', '1', '1', '1');
INSERT INTO `product` VALUES ('18', '2017-05-19 17:17:18', '\0', '0', '<p>\r\n	<span style=\"font-size:16px;\">林依梅</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">女</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">华北水利水电大学（龙子湖校区）大二学生</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">科目：数学 化学 生物</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">课时费：50元/h</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">电话：18638922054</span>\r\n</p>', 'upload/20170519/09e7c658-811d-4710-83fd-84451b77f407.jpg', '数学 化学 生物', '1', '1', '1');
INSERT INTO `product` VALUES ('19', '2017-05-19 17:18:57', '\0', '0', '<p>\r\n	<span style=\"font-size:16px;\">裴卫群</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">女</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">华北水利水电大学（龙子湖校区）大三学生</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">科目：初中数学 </span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">课时费：45元/h</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">微信：pwq13027521273 电话：13027521273</span>\r\n</p>', 'upload/20170519/3e57d1c8-39d7-44bc-9e56-4c801bc89942.jpg', '初中数学 ', '1', '1', '1');
INSERT INTO `product` VALUES ('20', '2017-05-19 17:20:43', '\0', '0', '<p>\r\n	<span style=\"font-size:16px;\">王婷</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">女</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">华北水利水电大学（龙子湖校区）大一学生</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">科目：初中语文 数学 英语 化学</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">课时费：50元/h</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">电话：13164355093</span>\r\n</p>', 'upload/20170519/c9e2eeb1-3916-442f-8a90-6d19e56bfede.jpg', '初中语文 数学 英语 化学', '1', '1', '1');
INSERT INTO `product` VALUES ('21', '2017-05-19 17:22:37', '\0', '0', '<p>\r\n	<span style=\"font-size:16px;\">杨紫薇</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">女</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">华北水利水电大学（龙子湖校区）大二学生</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">科目：小学至高中语文 数学 初高中生物</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">课时费：40元/h</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">电话：13283880728</span>\r\n</p>', 'upload/20170519/478f28be-a9ae-4839-b2ff-6ce3817bccd8.jpg', '小学至高中语文 数学 初高中生物', '1', '1', '1');
INSERT INTO `product` VALUES ('22', '2017-05-19 17:24:16', '\0', '0', '<p>\r\n	<span style=\"font-size:16px;\">陈笑迎</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">女</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">华北水利水电大学（龙子湖校区）</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">科目：数学 物理 化学 生物</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">课时费：初中40元/h 高中50元/h</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">电话：18638920584</span>\r\n</p>', 'upload/20170519/871372bb-0b09-4b40-a591-876bc8ef5b88.jpg', '数学 物理 化学 生物', '1', '1', '1');
INSERT INTO `product` VALUES ('23', '2017-05-19 17:25:38', '\0', '0', '<p>\r\n	<span style=\"font-size:16px;\">陈怡帆</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">女</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">华北水利水电大学（龙子湖校区）</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">科目：数学</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">课时费：75元/h</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">电话：18937828186</span>\r\n</p>', 'upload/20170519/42f97bbc-b128-4059-9ef5-c7898521fb41.jpg', '数学', '1', '1', '1');
INSERT INTO `product` VALUES ('24', '2017-05-19 17:27:17', '\0', '0', '<p>\r\n	<span style=\"font-size:16px;\">李季原</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">女</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">华北水利水电大学（龙子湖校区）大一学生</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">科目：小学数学</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">课时费：50元/h</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">电话：15565654977</span>\r\n</p>', 'upload/20170519/4c8f6793-9dd9-43b5-914f-f5ea13d7e063.jpg', '小学数学', '1', '1', '1');
INSERT INTO `product` VALUES ('25', '2017-05-19 17:28:50', '\0', '0', '<p>\r\n	<span style=\"font-size:16px;\">刘慧慧</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">女</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">华北水利水电大学（龙子湖校区）大二学生</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">科目：英语 语文 生物 美术 PS AI技术</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">课时费：40元/h</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">电话：15538114761</span>\r\n</p>', 'upload/20170519/68b5d515-7f41-4596-b3f8-7f2e11769e9d.jpg', '英语 语文 生物 美术 PS AI技术', '1', '1', '1');
INSERT INTO `product` VALUES ('26', '2017-05-19 17:30:27', '\0', '0', '<p>\r\n	<span style=\"font-size:16px;\">徐梦晴</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">女</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">华北水利水电大学（龙子湖校区）</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">科目：初中英语</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">课时费：35元/h</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">电话：13164356590</span>\r\n</p>', 'upload/20170519/d23990d2-3c85-453a-98b7-fa9b292a01e4.jpg', '初中英语', '1', '1', '1');
INSERT INTO `product` VALUES ('27', '2017-05-19 17:32:42', '\0', '0', '<p>\r\n	<span style=\"font-size:16px;\">毛燕宁</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">女</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">华北水利水电大学（龙子湖校区）大二学生</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">科目:语文 数学 生物 化学</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">课时费：40元/h</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">电话：18037691581</span>\r\n</p>', 'upload/20170519/3bcdb5d7-95a6-4cf3-ac94-d5075dca9605.jpg', '语文 数学 生物 化学', '1', '1', '1');
INSERT INTO `product` VALUES ('28', '2017-05-19 17:34:20', '\0', '1', '<p>\r\n	<span style=\"font-size:16px;\"><span style=\"font-size:16px;\"></span>李燕燕</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">女</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">华北水利水电大学（龙子湖校区）</span><span style=\"font-size:16px;\"> 大二学生</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">科目:数学 物理 化学 </span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">课时费：40-50元/h</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">电话：13276909153</span> \r\n</p>', 'upload/20170519/f61a8274-38ac-419c-b42c-029be230ea3d.jpg', '数学 物理 化学 ', '1', '1', '1');
INSERT INTO `product` VALUES ('29', '2017-05-19 17:36:01', '\0', '1', '<p>\r\n	<span style=\"font-size:16px;\"><span style=\"font-size:16px;\"></span>张伊</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">女</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">华北水利水电大学（龙子湖校区）</span> <span style=\"font-size:16px;\">大二学生</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">科目：数学 化学 生物</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">课时费：50元/h</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">电话：15638500962</span> \r\n</p>', 'upload/20170519/458138f0-97df-4cf6-b4b7-532fe8652548.jpg', '数学 化学 生物', '1', '1', '1');
INSERT INTO `product` VALUES ('30', '2017-05-19 17:38:05', '\0', '0', '<p>\r\n	<span style=\"font-size:16px;\">马原傲</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">女</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">华北水利水电大学（龙子湖校区）</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">科目：小学语数外 初中语外</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">课时费：30元/h</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">电话：13521460763</span>\r\n</p>', 'upload/20170519/4353c1f1-364b-4d49-9213-8e7376cb831b.jpg', '小学语数外 初中语外', '1', '1', '1');
INSERT INTO `product` VALUES ('31', '2017-05-19 17:41:54', '\0', '0', '<p>\r\n	<span style=\"font-size:16px;\">王玉莹</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">女</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">华北水利水电大学（龙子湖校区）大二学生</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">科目：数学 英语 物理</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">课时费：40元/h</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">电话：15225195582 </span>\r\n</p>', 'upload/20170519/9e362c39-d275-4360-ad24-70666283ae01.jpg', '数学 英语 物理', '1', '1', '1');
INSERT INTO `product` VALUES ('32', '2017-05-19 17:50:12', '\0', '0', '<p>\r\n	<span style=\"font-size:16px;\">王晨</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">女</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">华北水利水电大学（龙子湖校区）</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">科目：数学 英语</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">课时费：30元/h</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">电话：18538167052</span>\r\n</p>', 'upload/20170519/6f3c3cce-c57b-4cec-b95a-04bec268d20f.jpg', '数学 英语', '1', '1', '1');
INSERT INTO `product` VALUES ('33', '2017-05-19 17:51:42', '\0', '0', '<p>\r\n	<span style=\"font-size:16px;\">孙孟好</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">女</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">华北水利水电大学（龙子湖校区）</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">科目：小学数学 英语</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">课时费：50元/h</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">电话：13838531840</span>\r\n</p>', 'upload/20170519/ef3f03a0-9e22-4c7e-a630-837d1712671f.jpg', '小学数学 英语', '1', '1', '1');
INSERT INTO `product` VALUES ('34', '2017-06-03 18:48:45', '\0', '0', '<p>\r\n	<span style=\"font-size:16px;\">段茜雅</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">女</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">华北水利水电大学 大一学生</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">科目：英语</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">课时费：35元/小时</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:16px;\">联系方式：17796731682</span>\r\n</p>', 'upload/20170603/6da6f137-39b5-4119-b546-c039aaaa35c9.jpg', '英语', '1', '1', '1');
INSERT INTO `product` VALUES ('35', '2017-06-14 19:56:57', '\0', '0', '<p>\r\n	<span style=\"font-size:18px;\">沈志云</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">女</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">华北水利水电大学</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">科目：英语</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">课时费：面议</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\">联系电话：13017653583 </span>\r\n</p>', 'upload/20170614/c43ae063-e677-49f7-9d9c-c9bc598c06bb.jpg', '英语', '1', '1', '1');

-- ----------------------------
-- Table structure for product_cate
-- ----------------------------
DROP TABLE IF EXISTS `product_cate`;
CREATE TABLE `product_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createDate` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `version` int(11) NOT NULL,
  `fatherId` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_cate
-- ----------------------------
INSERT INTO `product_cate` VALUES ('1', '2017-05-19 15:39:27', '\0', '0', '0', '老师在线');

-- ----------------------------
-- Table structure for recharge
-- ----------------------------
DROP TABLE IF EXISTS `recharge`;
CREATE TABLE `recharge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createDate` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `version` int(11) NOT NULL,
  `money` double DEFAULT NULL,
  `no` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKCFF27EA73519E4C2` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recharge
-- ----------------------------

-- ----------------------------
-- Table structure for recharge_card
-- ----------------------------
DROP TABLE IF EXISTS `recharge_card`;
CREATE TABLE `recharge_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createDate` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `version` int(11) NOT NULL,
  `money` double NOT NULL,
  `no` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `useTime` varchar(255) DEFAULT NULL,
  `useUserNo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recharge_card
-- ----------------------------

-- ----------------------------
-- Table structure for test_c3p0
-- ----------------------------
DROP TABLE IF EXISTS `test_c3p0`;
CREATE TABLE `test_c3p0` (
  `a` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_c3p0
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createDate` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `version` int(11) NOT NULL,
  `balance` double(11,2) DEFAULT '0.00',
  `commission` double(11,2) DEFAULT '0.00',
  `lastLoginIp` varchar(255) DEFAULT NULL,
  `lastLoginTime` datetime DEFAULT NULL,
  `loginCount` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `registerIp` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `superior` varchar(255) DEFAULT NULL,
  `no` varchar(255) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '2015-06-16 22:32:59', '\0', '109', '1531.00', '110.50', '127.0.0.1', '2015-07-02 21:19:47', '69', 'admin', 'b0baee9d279d34fa1dfd71aadb908c3f', '18705080055', '192.168.0.100', '1', null, '100000', null);
INSERT INTO `user` VALUES ('2', '2017-06-09 09:03:28', '\0', '1', '0.00', '0.00', '222.137.47.197', '2017-06-09 09:03:28', '1', '沈志云', 'cc29bbad6fe2e2031743740f2089befe', '13017653583', '222.137.47.197', '0', ';100000;', '819659', null);

-- ----------------------------
-- Table structure for withdraw
-- ----------------------------
DROP TABLE IF EXISTS `withdraw`;
CREATE TABLE `withdraw` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createDate` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `version` int(11) NOT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `bankAddress` varchar(255) DEFAULT NULL,
  `bankName` varchar(255) DEFAULT NULL,
  `bankNo` varchar(255) DEFAULT NULL,
  `money` double DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKC7F50B0A3519E4C2` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of withdraw
-- ----------------------------
