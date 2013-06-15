/*
 Navicat MySQL Data Transfer

 Source Server         : local
 Source Server Version : 50611
 Source Host           : localhost
 Source Database       : onlinepayment

 Target Server Version : 50611
 File Encoding         : utf-8

 Date: 06/15/2013 22:26:35 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `tp_access`
-- ----------------------------
DROP TABLE IF EXISTS `tp_access`;
CREATE TABLE `tp_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tp_access`
-- ----------------------------
BEGIN;
INSERT INTO `tp_access` VALUES ('1', '74', '73', '3', null), ('1', '73', '70', '2', null), ('1', '70', '1', '0', null), ('1', '20', '19', '3', null), ('1', '19', '1', '2', null), ('1', '17', '8', '3', null), ('1', '11', '8', '3', null), ('1', '10', '8', '3', null), ('1', '9', '8', '3', null), ('1', '16', '8', '3', null), ('1', '8', '28', '2', null), ('1', '28', '13', '0', null), ('1', '13', '1', '0', null), ('1', '6', '2', '3', null), ('1', '7', '2', '3', null), ('1', '4', '2', '3', null), ('1', '5', '2', '3', null), ('1', '3', '2', '3', null), ('1', '2', '1', '2', null), ('1', '38', '21', '3', null), ('1', '37', '21', '3', null), ('3', '16', '8', '3', null), ('3', '8', '28', '2', null), ('3', '28', '13', '0', null), ('3', '13', '1', '0', null), ('3', '6', '2', '3', null), ('3', '7', '2', '3', null), ('3', '4', '2', '3', null), ('3', '5', '2', '3', null), ('3', '3', '2', '3', null), ('3', '2', '1', '2', null), ('3', '37', '21', '3', null), ('3', '22', '21', '3', null), ('3', '30', '21', '3', null), ('3', '21', '18', '2', null), ('3', '18', '1', '0', null), ('3', '51', '46', '0', null), ('3', '49', '46', '0', null), ('3', '15', '25', '0', null), ('3', '45', '1', '0', null), ('3', '46', '45', '2', null), ('3', '47', '46', '3', null), ('3', '20', '19', '3', null), ('3', '19', '1', '2', null), ('1', '33', '21', '3', null), ('1', '32', '21', '3', null), ('1', '31', '21', '3', null), ('1', '23', '21', '3', null), ('1', '22', '21', '3', null), ('1', '36', '21', '3', null), ('1', '35', '21', '3', null), ('3', '25', '14', '0', null), ('3', '14', '1', '0', null), ('3', '1', '0', '1', null), ('1', '34', '21', '3', null), ('1', '30', '21', '3', null), ('1', '21', '18', '2', null), ('1', '18', '1', '0', null), ('1', '15', '25', '0', null), ('2', '68', '59', '0', null), ('2', '60', '59', '3', null), ('2', '59', '57', '2', null), ('2', '57', '1', '0', null), ('2', '20', '19', '3', null), ('2', '19', '1', '2', null), ('2', '17', '8', '3', null), ('2', '11', '8', '3', null), ('2', '10', '8', '3', null), ('2', '9', '8', '3', null), ('2', '16', '8', '3', null), ('2', '8', '28', '2', null), ('2', '28', '13', '0', null), ('2', '13', '1', '0', null), ('2', '6', '2', '3', null), ('2', '7', '2', '3', null), ('2', '4', '2', '3', null), ('2', '5', '2', '3', null), ('2', '3', '2', '3', null), ('2', '2', '1', '2', null), ('2', '67', '21', '3', null), ('2', '66', '21', '3', null), ('2', '38', '21', '3', null), ('2', '37', '21', '3', null), ('2', '33', '21', '3', null), ('2', '32', '21', '3', null), ('2', '31', '21', '3', null), ('2', '23', '21', '3', null), ('2', '22', '21', '3', null), ('2', '40', '21', '3', null), ('2', '36', '21', '3', null), ('2', '35', '21', '3', null), ('2', '34', '21', '3', null), ('2', '30', '21', '3', null), ('2', '21', '18', '2', null), ('2', '18', '1', '0', null), ('2', '51', '46', '0', null), ('2', '50', '46', '3', null), ('2', '49', '46', '0', null), ('2', '48', '46', '3', null), ('2', '47', '46', '3', null), ('2', '46', '45', '2', null), ('2', '45', '1', '0', null), ('2', '15', '25', '0', null), ('2', '25', '14', '0', null), ('2', '14', '1', '0', null), ('2', '1', '0', '1', null), ('2', '61', '1', '0', null), ('2', '62', '61', '2', null), ('2', '63', '62', '3', null), ('2', '65', '62', '3', null), ('1', '25', '14', '0', null), ('1', '14', '1', '0', null), ('1', '1', '0', '1', null), ('6', '88', '73', '3', null), ('6', '75', '73', '3', null), ('6', '74', '73', '3', null), ('6', '73', '70', '2', null), ('6', '70', '1', '0', null), ('6', '81', '62', '3', null), ('6', '80', '62', '3', null), ('6', '79', '62', '3', null), ('6', '78', '62', '3', null), ('6', '77', '62', '3', null), ('6', '76', '62', '3', null), ('6', '65', '62', '3', null), ('6', '63', '62', '3', null), ('6', '62', '61', '2', null), ('6', '61', '1', '0', null), ('6', '68', '59', '0', null), ('6', '60', '59', '3', null), ('6', '59', '57', '2', null), ('6', '57', '1', '0', null), ('6', '20', '19', '3', null), ('6', '19', '1', '2', null), ('6', '17', '8', '3', null), ('6', '11', '8', '3', null), ('6', '10', '8', '3', null), ('6', '9', '8', '3', null), ('6', '16', '8', '3', null), ('6', '8', '28', '2', null), ('6', '28', '13', '0', null), ('6', '13', '1', '0', null), ('6', '6', '2', '3', null), ('6', '7', '2', '3', null), ('6', '4', '2', '3', null), ('6', '5', '2', '3', null), ('6', '3', '2', '3', null), ('6', '2', '1', '2', null), ('6', '87', '21', '3', null), ('6', '86', '21', '3', null), ('6', '85', '21', '3', null), ('6', '83', '21', '3', null), ('6', '84', '21', '3', null), ('6', '67', '21', '3', null), ('6', '66', '21', '0', null), ('6', '38', '21', '3', null), ('6', '37', '21', '3', null), ('6', '33', '21', '3', null), ('6', '32', '21', '3', null), ('6', '31', '21', '3', null), ('6', '23', '21', '3', null), ('6', '22', '21', '3', null), ('1', '75', '73', '3', null), ('6', '40', '21', '3', null), ('6', '36', '21', '3', null), ('6', '35', '21', '3', null), ('6', '34', '21', '3', null), ('6', '30', '21', '3', null), ('6', '21', '18', '2', null), ('6', '18', '1', '0', null), ('6', '51', '46', '0', null), ('6', '50', '46', '3', null), ('6', '49', '46', '0', null), ('6', '48', '46', '3', null), ('6', '47', '46', '3', null), ('6', '46', '45', '2', null), ('6', '45', '1', '0', null), ('6', '15', '25', '0', null), ('6', '25', '14', '0', null), ('6', '14', '1', '0', null), ('6', '1', '0', '1', null), ('6', '89', '73', '3', null), ('6', '90', '73', '3', null), ('6', '91', '73', '3', null), ('6', '92', '73', '3', null);
COMMIT;

-- ----------------------------
--  Table structure for `tp_appeal`
-- ----------------------------
DROP TABLE IF EXISTS `tp_appeal`;
CREATE TABLE `tp_appeal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL,
  `authname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `id_number` int(25) NOT NULL,
  `role` smallint(6) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phone_number` int(30) NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `pass` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `tp_appeal`
-- ----------------------------
BEGIN;
INSERT INTO `tp_appeal` VALUES ('43', '藏红花', '张海', '21474833', '4', '1', '2147483647', '为什么把我拉黑名单', '0'), ('44', '我爱IT', '吴海', '66289813', '4', '1', '2147483647', '为什么把我拉黑名单', '0');
COMMIT;

-- ----------------------------
--  Table structure for `tp_authappeal`
-- ----------------------------
DROP TABLE IF EXISTS `tp_authappeal`;
CREATE TABLE `tp_authappeal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL,
  `authname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `id_number` int(25) NOT NULL,
  `role` smallint(6) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phone_number` int(30) NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `pass` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1 COMMENT='认证信息表';

-- ----------------------------
--  Records of `tp_authappeal`
-- ----------------------------
BEGIN;
INSERT INTO `tp_authappeal` VALUES ('41', '王海', '王楷', '2147483647', '4', '1', '522172981', '我爱。。。', '2'), ('42', '章sir', '章晶晶', '2147483647', '4', '1', '625581823', '我不爱。。。', '0');
COMMIT;

-- ----------------------------
--  Table structure for `tp_blacklist`
-- ----------------------------
DROP TABLE IF EXISTS `tp_blacklist`;
CREATE TABLE `tp_blacklist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `role` smallint(6) unsigned NOT NULL COMMENT '组ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 1:启用 0:禁止',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `last_login_time` int(11) unsigned NOT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(15) DEFAULT NULL COMMENT '最后登录IP',
  `last_location` varchar(100) DEFAULT NULL COMMENT '最后登录位置',
  `isvip` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isblack` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='黑名单表';

-- ----------------------------
--  Records of `tp_blacklist`
-- ----------------------------
BEGIN;
INSERT INTO `tp_blacklist` VALUES ('15', 'yingying', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '胖胖胖', '1366967653', '127.0.0.1', '我不知道啊', '1', '1');
COMMIT;

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

-- ----------------------------
--  Table structure for `tp_list`
-- ----------------------------
DROP TABLE IF EXISTS `tp_list`;
CREATE TABLE `tp_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `role` smallint(6) unsigned NOT NULL COMMENT '组ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 1:启用 0:禁止',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `last_login_time` int(11) unsigned NOT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(15) DEFAULT NULL COMMENT '最后登录IP',
  `last_location` varchar(100) DEFAULT NULL COMMENT '最后登录位置',
  `isvip` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isblack` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 COMMENT='VIP表';

-- ----------------------------
--  Records of `tp_list`
-- ----------------------------
BEGIN;
INSERT INTO `tp_list` VALUES ('10', 'leilei', '21232f297a57a5a743894a0e4a801fc3', '4', '1', '胖，圆', '1357142930', '127.0.0.1', '', '1', '0'), ('12', 'yaya', '5aee9dbd2a188839105073571bee1b1f', '4', '1', '瘦', '1356967653', '127.0.0.1', '', '0', '0'), ('15', 'yingying', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '胖胖胖', '1366967653', '127.0.0.1', '我不知道啊', '0', '0');
COMMIT;

-- ----------------------------
--  Table structure for `tp_node`
-- ----------------------------
DROP TABLE IF EXISTS `tp_node`;
CREATE TABLE `tp_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '节点名称',
  `title` varchar(50) NOT NULL COMMENT '菜单名称',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否激活 1：是 2：否',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `pid` smallint(6) unsigned NOT NULL COMMENT '父ID',
  `level` tinyint(1) unsigned NOT NULL COMMENT '节点等级',
  `data` varchar(255) DEFAULT NULL COMMENT '附加参数',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序权重',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '菜单显示类型 0:不显示 1:导航菜单 2:左侧菜单',
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tp_node`
-- ----------------------------
BEGIN;
INSERT INTO `tp_node` VALUES ('1', 'cms', '根节点', '1', '不可删除', '0', '1', null, '0', '0'), ('2', 'index', '后台主框架模块', '1', '所有后台用户组都必须有此权限，否则后台无法登录', '1', '2', '', '10', '0'), ('3', 'index', 'index方法', '1', 'Index模块的index方法', '2', '3', '', '5', '0'), ('4', 'left', 'left方法', '1', 'Index模块的left方法', '2', '3', '', '3', '0'), ('5', 'top', 'top方法', '1', 'Index模块的top方法', '2', '3', '', '4', '0'), ('6', 'main', 'main方法', '1', 'Index模块的main方法', '2', '3', '', '1', '0'), ('7', 'footer', 'footer方法', '1', 'Index模块的footer方法', '2', '3', '', '2', '0'), ('8', 'Node', '菜单节点管理', '1', '', '28', '2', '?s=/Admin/Node/index', '1', '2'), ('9', 'add', '添加菜单', '1', '', '8', '3', '', '4', '0'), ('10', 'edit', '修改菜单', '1', '', '8', '3', '', '3', '0'), ('11', 'del', '删除菜单', '1', '', '8', '3', '', '2', '0'), ('13', 'extend', '扩展功能', '1', '', '1', '0', '', '9', '1'), ('16', 'index', '菜单列表', '1', '', '8', '3', '', '5', '0'), ('17', 'sort', '菜单排序', '1', '', '8', '3', '', '1', '0'), ('18', 'UserCenter', '用户管理', '1', '', '1', '0', '', '20', '1'), ('19', 'cache', '缓存模块', '1', '', '1', '2', '', '0', '0'), ('20', 'delCore', '删除核心缓存', '1', '', '19', '3', '', '0', '0'), ('21', 'User', '后台用户管理', '1', '', '18', '2', '', '0', '2'), ('22', 'role', '角色管理', '1', '', '21', '3', '?s=/Admin/User/role', '4', '2'), ('23', 'role_add', '角色添加', '1', '', '21', '3', '?s=/Admin/User/role_add', '0', '0'), ('30', 'index', '后台用户管理', '1', '', '21', '3', '?s=/Admin/User/index', '10', '2'), ('28', 'extend_sub', '扩展功能', '1', '', '13', '0', '', '0', '2'), ('31', 'role_edit', '角色编辑', '1', '', '21', '3', '', '0', '0'), ('32', 'role_del', '角色删除', '1', '', '21', '3', '', '0', '0'), ('33', 'role_sort', '角色排序', '1', '', '21', '3', '', '0', '0'), ('34', 'add', '后台用户添加', '1', '', '21', '3', '', '9', '0'), ('35', 'edit', '后台用户编辑', '1', '', '21', '3', '', '8', '0'), ('36', 'del', '后台用户删除', '1', '', '21', '3', '', '7', '0'), ('37', 'access', '角色权限浏览', '1', '', '21', '3', '', '0', '0'), ('38', 'access_edit', '角色权限编辑', '1', '', '21', '3', '', '0', '0'), ('40', 'check_username', '检查用户名', '1', 'ajax验证', '21', '3', '', '6', '0'), ('57', 'deal', '交易记录', '1', '', '1', '0', '', '0', '1'), ('59', 'Deal', '交易记录', '1', '', '57', '2', '', '0', '2'), ('60', 'index', '查看所有交易记录', '1', '', '59', '3', '?s=/Admin/Deal/index', '0', '2'), ('61', 'auth_appeal', '认证与申诉', '1', '', '1', '0', '', '0', '1'), ('62', 'Authappeal', '认证与申诉', '1', '', '61', '2', '', '0', '2'), ('63', 'index', '实名认证', '1', '', '62', '3', '?s=/Admin/Authappeal/index', '0', '2'), ('65', 'appeal', '申诉', '1', '', '62', '3', '?s=/Admin/Authappeal/appeal', '0', '2'), ('66', 'index', 'VIP名单管理', '1', '', '21', '0', '?s=/Admin/List/index', '0', '2'), ('67', 'bl', '黑名单管理', '1', '', '21', '3', '?s=/Admin/List/blacklist', '0', '2'), ('68', 'readDetail', '交易详情', '1', '', '59', '0', '', '0', '0'), ('70', 'vip_black', 'VIP&黑名单', '1', '', '1', '0', '', '0', '1'), ('74', 'index', 'VIP名单管理', '1', '', '73', '3', '?s=/Admin/List/index', '0', '2'), ('73', 'List', 'VIP&黑名单', '1', '', '70', '2', '', '0', '2'), ('75', 'blacklist', '黑名单管理', '1', '', '73', '3', '?s=/Admin/List/blacklist', '0', '2'), ('76', 'pass', '认证通过', '1', '', '62', '3', '', '0', '0'), ('77', 'refuse', '驳回认证', '1', '', '62', '3', '', '0', '0'), ('78', 'del', '删除认证', '1', '', '62', '3', '', '0', '0'), ('79', 'appeal_pass', '通过申诉', '1', '', '62', '3', '', '0', '0'), ('80', 'appeal_refuse', '驳回申诉', '1', '', '62', '3', '', '0', '0'), ('81', 'appeal_del', '删除申诉', '1', '', '62', '3', '', '0', '0'), ('84', 'vip', '设为VIP', '1', '', '21', '3', '', '0', '0'), ('83', 'search', '搜索', '1', '', '21', '3', '', '0', '0'), ('85', 'black', '设为黑名单', '1', '', '21', '3', '', '0', '0'), ('86', 'rmvip', '删除VIP', '1', '', '21', '3', '', '0', '0'), ('87', 'rmblack', '删除黑名单', '1', '', '21', '3', '', '0', '0'), ('88', 'search', '搜索', '1', '', '73', '3', '', '0', '0'), ('89', 'detail', '用户详情', '1', '', '73', '3', '', '0', '0'), ('90', 'blacklist_search', '黑名单搜索', '1', '', '73', '3', '', '0', '0'), ('91', 'blacklist_detail', '黑名单详情', '1', '', '73', '3', '', '0', '0'), ('92', 'blacklist_del', '删除黑名单', '1', '', '73', '3', '', '0', '0');
COMMIT;

-- ----------------------------
--  Table structure for `tp_role`
-- ----------------------------
DROP TABLE IF EXISTS `tp_role`;
CREATE TABLE `tp_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '后台组名',
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `status` tinyint(1) unsigned DEFAULT '0' COMMENT '是否激活 1：是 0：否',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序权重',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `isvip` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isblack` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tp_role`
-- ----------------------------
BEGIN;
INSERT INTO `tp_role` VALUES ('1', '超级管理员', '0', '1', '50', '超级管理员组', '0', '0'), ('2', '编辑', '0', '1', '40', '编辑组', '1', '0'), ('3', '站点监督员', '0', '1', '49', '站点监督员组', '0', '0'), ('4', '普通用户', '0', '1', '0', '卖家，买家', '0', '0'), ('6', '测试管理员', '0', '1', '0', '', '0', '0');
COMMIT;

-- ----------------------------
--  Table structure for `tp_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `tp_role_user`;
CREATE TABLE `tp_role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` smallint(6) unsigned NOT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tp_role_user`
-- ----------------------------
BEGIN;
INSERT INTO `tp_role_user` VALUES ('19', '6');
COMMIT;

-- ----------------------------
--  Table structure for `tp_user`
-- ----------------------------
DROP TABLE IF EXISTS `tp_user`;
CREATE TABLE `tp_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `role` smallint(6) unsigned NOT NULL COMMENT '组ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 1:启用 0:禁止',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `last_login_time` int(11) unsigned NOT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(15) DEFAULT NULL COMMENT '最后登录IP',
  `last_location` varchar(100) DEFAULT NULL COMMENT '最后登录位置',
  `isvip` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isblack` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
--  Records of `tp_user`
-- ----------------------------
BEGIN;
INSERT INTO `tp_user` VALUES ('1', 'admin', '0192023a7bbd73250516f069df18b500', '1', '1', '神级管理员,可无视系统权限.', '1371303092', '0.0.0.0', 'IANA保留地址', '0', '0'), ('3', 'editor', 'e10adc3949ba59abbe56e057f20f883e', '2', '1', '', '1371299900', '0.0.0.0', 'IANA保留地址', '0', '0'), ('10', 'leilei', '21232f297a57a5a743894a0e4a801fc3', '4', '1', '胖，圆', '1357142930', '127.0.0.1', '', '1', '0'), ('12', 'yaya', '5aee9dbd2a188839105073571bee1b1f', '4', '1', '瘦', '1356967653', '127.0.0.1', '', '1', '0'), ('15', 'yingying', 'e10adc3949ba59abbe56e057f20f883e', '4', '1', '胖胖胖', '1366967653', '127.0.0.1', '我不知道啊', '1', '1'), ('16', 'meimei', '21232f297a57a5a743894a0e4a801fc3', '4', '1', '圆得要死', '1357142930', '127.0.0.1', '', '0', '0'), ('17', 'lele', '5aee9dbd2a188839105073571bee1b1f', '4', '1', '瘦啊啊啊啊', '1356967653', '127.0.0.1', '', '0', '0'), ('18', 'hahaha', '21232f297a57a5a743894a0e4a801fc3', '4', '1', '圆啊啊啊', '1357142930', '127.0.0.1', '', '0', '0'), ('19', 'test000', '96e79218965eb72c92a549dd5a330112', '6', '1', '', '1371304675', '0.0.0.0', 'IANA保留地址', '0', '0');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
