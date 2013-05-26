/*
 Navicat MySQL Data Transfer

 Source Server         : local
 Source Server Version : 50611
 Source Host           : localhost
 Source Database       : test

 Target Server Version : 50611
 File Encoding         : utf-8

 Date: 05/26/2013 19:10:54 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `tp_deal`
-- ----------------------------
DROP TABLE IF EXISTS `tp_deal`;
CREATE TABLE `tp_deal` (
  `deal_id` int(11) NOT NULL AUTO_INCREMENT,
  `buyer` int(11) NOT NULL,
  `seller` int(11) NOT NULL,
  `time` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `about` varchar(45) COLLATE utf8_unicode_ci DEFAULT 'hehe',
  PRIMARY KEY (`deal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `tp_deal`
-- ----------------------------
BEGIN;
INSERT INTO `tp_deal` VALUES ('2', '3', '1', '1369534785', '1', '这里需要把买家和卖家设定为可跳转链接，同时状态参数需要丰富一下。');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
