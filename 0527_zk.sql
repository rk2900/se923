-- phpMyAdmin SQL Dump
-- version 3.3.7
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2013 年 05 月 26 日 16:14
-- 服务器版本: 5.1.50
-- PHP 版本: 5.2.14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `onlinepayment`
--

-- --------------------------------------------------------

--
-- 表的结构 `tp_access`
--

CREATE TABLE IF NOT EXISTS `tp_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_access`
--

INSERT INTO `tp_access` (`role_id`, `node_id`, `pid`, `level`, `module`) VALUES
(1, 8, 28, 2, NULL),
(1, 28, 13, 0, NULL),
(1, 13, 1, 0, NULL),
(1, 6, 2, 3, NULL),
(1, 7, 2, 3, NULL),
(1, 4, 2, 3, NULL),
(1, 5, 2, 3, NULL),
(1, 32, 21, 3, NULL),
(1, 31, 21, 3, NULL),
(1, 23, 21, 3, NULL),
(1, 22, 21, 3, NULL),
(1, 36, 21, 3, NULL),
(1, 35, 21, 3, NULL),
(1, 34, 21, 3, NULL),
(1, 30, 21, 3, NULL),
(1, 21, 18, 2, NULL),
(1, 18, 1, 0, NULL),
(1, 15, 25, 0, NULL),
(1, 25, 14, 0, NULL),
(1, 14, 1, 0, NULL),
(1, 1, 0, 1, NULL),
(5, 65, 62, 3, NULL),
(5, 63, 62, 3, NULL),
(5, 62, 61, 2, NULL),
(5, 61, 1, 0, NULL),
(5, 60, 59, 3, NULL),
(5, 59, 57, 2, NULL),
(5, 57, 1, 0, NULL),
(5, 56, 54, 3, NULL),
(5, 55, 54, 3, NULL),
(5, 54, 53, 2, NULL),
(5, 53, 1, 0, NULL),
(5, 6, 2, 3, NULL),
(5, 7, 2, 3, NULL),
(5, 4, 2, 3, NULL),
(5, 5, 2, 3, NULL),
(5, 3, 2, 3, NULL),
(3, 60, 59, 3, NULL),
(1, 20, 19, 3, NULL),
(1, 19, 1, 2, NULL),
(1, 17, 8, 3, NULL),
(1, 11, 8, 3, NULL),
(1, 10, 8, 3, NULL),
(1, 9, 8, 3, NULL),
(1, 16, 8, 3, NULL),
(3, 59, 57, 2, NULL),
(3, 57, 1, 0, NULL),
(3, 1, 0, 1, NULL),
(1, 3, 2, 3, NULL),
(1, 2, 1, 2, NULL),
(1, 38, 21, 3, NULL),
(1, 37, 21, 3, NULL),
(1, 33, 21, 3, NULL),
(5, 2, 1, 2, NULL),
(5, 40, 21, 3, NULL),
(5, 34, 21, 3, NULL),
(5, 30, 21, 3, NULL),
(5, 21, 18, 2, NULL),
(5, 18, 1, 0, NULL),
(5, 1, 0, 1, NULL),
(2, 56, 54, 3, NULL),
(2, 55, 54, 3, NULL),
(2, 54, 53, 2, NULL),
(2, 53, 1, 0, NULL),
(2, 1, 0, 1, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `tp_appeal`
--

CREATE TABLE IF NOT EXISTS `tp_appeal` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- 转存表中的数据 `tp_appeal`
--

INSERT INTO `tp_appeal` (`id`, `username`, `authname`, `id_number`, `role`, `status`, `phone_number`, `remark`, `pass`) VALUES
(43, '藏红花', '张海', 21474833, 4, 1, 2147483647, '为什么把我拉黑名单', 0),
(44, '我爱IT', '吴海', 66289813, 4, 1, 2147483647, '为什么把我拉黑名单', 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_authappeal`
--

CREATE TABLE IF NOT EXISTS `tp_authappeal` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='认证信息表' AUTO_INCREMENT=43 ;

--
-- 转存表中的数据 `tp_authappeal`
--

INSERT INTO `tp_authappeal` (`id`, `username`, `authname`, `id_number`, `role`, `status`, `phone_number`, `remark`, `pass`) VALUES
(41, '王海', '王楷', 2147483647, 4, 1, 522172981, '我爱。。。', 0),
(42, '章sir', '章晶晶', 2147483647, 4, 1, 625581823, '我不爱。。。', 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_blacklist`
--

CREATE TABLE IF NOT EXISTS `tp_blacklist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `role` smallint(6) unsigned NOT NULL COMMENT '组ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 1:启用 0:禁止',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `last_login_time` int(11) unsigned NOT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(15) DEFAULT NULL COMMENT '最后登录IP',
  `last_location` varchar(100) DEFAULT NULL COMMENT '最后登录位置',
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='黑名单表' AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `tp_blacklist`
--

INSERT INTO `tp_blacklist` (`id`, `username`, `password`, `role`, `status`, `remark`, `last_login_time`, `last_login_ip`, `last_location`) VALUES
(11, 'meimei', '21232f297a57a5a743894a0e4a801fc3', 4, 1, '圆得要死', 1357142930, '127.0.0.1', '本机地址'),
(13, 'yaya', '5aee9dbd2a188839105073571bee1b1f', 4, 1, '和郑神是绝配', 1356967653, '127.0.0.1', '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_deal`
--

CREATE TABLE IF NOT EXISTS `tp_deal` (
  `deal_id` int(11) NOT NULL AUTO_INCREMENT,
  `buyer` int(11) NOT NULL,
  `seller` int(11) NOT NULL,
  `time` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `about` varchar(45) COLLATE utf8_unicode_ci DEFAULT 'hehe',
  PRIMARY KEY (`deal_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tp_deal`
--

INSERT INTO `tp_deal` (`deal_id`, `buyer`, `seller`, `time`, `status`, `about`) VALUES
(2, 3, 1, '1369534785', 1, '这里需要把买家和卖家设定为可跳转链接，同时状态参数需要丰富一下。');

-- --------------------------------------------------------

--
-- 表的结构 `tp_list`
--

CREATE TABLE IF NOT EXISTS `tp_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `role` smallint(6) unsigned NOT NULL COMMENT '组ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 1:启用 0:禁止',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `last_login_time` int(11) unsigned NOT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(15) DEFAULT NULL COMMENT '最后登录IP',
  `last_location` varchar(100) DEFAULT NULL COMMENT '最后登录位置',
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='VIP表' AUTO_INCREMENT=102 ;

--
-- 转存表中的数据 `tp_list`
--

INSERT INTO `tp_list` (`id`, `username`, `password`, `role`, `status`, `remark`, `last_login_time`, `last_login_ip`, `last_location`) VALUES
(10, 'leilei', '21232f297a57a5a743894a0e4a801fc3', 4, 1, '胖，圆', 1357142930, '127.0.0.1', ''),
(12, 'yaya', '5aee9dbd2a188839105073571bee1b1f', 4, 1, '瘦', 1356967653, '127.0.0.1', ''),
(15, 'yingying', 'e10adc3949ba59abbe56e057f20f883e', 4, 1, '胖胖胖', 1366967653, '127.0.0.1', '我不知道啊');

-- --------------------------------------------------------

--
-- 表的结构 `tp_node`
--

CREATE TABLE IF NOT EXISTS `tp_node` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=66 ;

--
-- 转存表中的数据 `tp_node`
--

INSERT INTO `tp_node` (`id`, `name`, `title`, `status`, `remark`, `pid`, `level`, `data`, `sort`, `display`) VALUES
(1, 'cms', '根节点', 1, '不可删除', 0, 1, NULL, 0, 0),
(2, 'index', '后台主框架模块', 1, '所有后台用户组都必须有此权限，否则后台无法登录', 1, 2, '', 10, 0),
(3, 'index', 'index方法', 1, 'Index模块的index方法', 2, 3, '', 5, 0),
(4, 'left', 'left方法', 1, 'Index模块的left方法', 2, 3, '', 3, 0),
(5, 'top', 'top方法', 1, 'Index模块的top方法', 2, 3, '', 4, 0),
(6, 'main', 'main方法', 1, 'Index模块的main方法', 2, 3, '', 1, 0),
(7, 'footer', 'footer方法', 1, 'Index模块的footer方法', 2, 3, '', 2, 0),
(8, 'Node', '菜单节点管理', 1, '', 28, 2, '?s=/Admin/Node/index', 1, 2),
(9, 'add', '添加菜单', 1, '', 8, 3, '', 4, 0),
(10, 'edit', '修改菜单', 1, '', 8, 3, '', 3, 0),
(11, 'del', '删除菜单', 1, '', 8, 3, '', 2, 0),
(13, 'extend', '扩展功能', 1, '', 1, 0, '', 9, 1),
(16, 'index', '菜单列表', 1, '', 8, 3, '', 5, 0),
(17, 'sort', '菜单排序', 1, '', 8, 3, '', 1, 0),
(18, 'UserCenter', '用户管理', 1, '', 1, 0, '', 20, 1),
(19, 'cache', '缓存模块', 1, '', 1, 2, '', 0, 0),
(20, 'delCore', '删除核心缓存', 1, '', 19, 3, '', 0, 0),
(21, 'User', '后台用户管理', 1, '', 18, 2, '', 0, 2),
(22, 'role', '角色管理', 1, '', 21, 3, '?s=/Admin/User/role', 4, 2),
(23, 'role_add', '角色添加', 1, '', 21, 3, '?s=/Admin/User/role_add', 0, 0),
(30, 'index', '后台用户管理', 1, '', 21, 3, '?s=/Admin/User/index', 10, 2),
(28, 'extend_sub', '扩展功能', 1, '', 13, 0, '', 0, 2),
(31, 'role_edit', '角色编辑', 1, '', 21, 3, '', 0, 0),
(32, 'role_del', '角色删除', 1, '', 21, 3, '', 0, 2),
(33, 'role_sort', '角色排序', 1, '', 21, 3, '', 0, 2),
(34, 'add', '后台用户添加', 1, '', 21, 3, '', 9, 0),
(35, 'edit', '后台用户编辑', 1, '', 21, 3, '', 8, 0),
(36, 'del', '后台用户删除', 1, '', 21, 3, '', 7, 0),
(37, 'access', '角色权限浏览', 1, '', 21, 3, '', 0, 2),
(38, 'access_edit', '角色权限编辑', 1, '', 21, 3, '', 0, 2),
(40, 'check_username', '检查用户名', 1, 'ajax验证', 21, 3, '', 6, 0),
(53, 'list_manager', '名单管理', 1, '', 1, 0, '', 0, 1),
(54, 'List', '名单管理', 1, '', 53, 2, '', 0, 2),
(55, 'index', 'VIP名单管理', 1, '', 54, 3, '?s=/Admin/List/index', 0, 2),
(57, 'deal', '交易记录', 1, '', 1, 0, '', 0, 1),
(56, 'blacklist', '黑名单管理', 1, '', 54, 3, '?s=/Admin/List/blacklist', 0, 2),
(59, 'Deal', '交易记录', 1, '', 57, 2, '', 0, 2),
(60, 'list_index', '查看所有交易记录', 1, '', 59, 3, '?s=/Admin/Deal/index', 0, 2),
(61, 'auth_appeal', '认证与申诉', 1, '', 1, 0, '', 0, 1),
(62, 'Authappeal', '认证与申诉', 1, '', 61, 2, '', 0, 2),
(63, 'auth', '实名认证', 1, '', 62, 3, '?s=/Admin/Authappeal/index', 0, 2),
(65, 'appeal', '申诉', 1, '', 62, 3, '?s=/Admin/Authappeal/appeal', 0, 2);

-- --------------------------------------------------------

--
-- 表的结构 `tp_role`
--

CREATE TABLE IF NOT EXISTS `tp_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '后台组名',
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `status` tinyint(1) unsigned DEFAULT '0' COMMENT '是否激活 1：是 0：否',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序权重',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `tp_role`
--

INSERT INTO `tp_role` (`id`, `name`, `pid`, `status`, `sort`, `remark`) VALUES
(1, '超级管理员', 0, 1, 50, '超级管理员组'),
(2, '在线预订管理员', 0, 1, 40, '在线预订管理员组'),
(3, '审计员', 0, 1, 49, '审计员组'),
(5, '普通管理员', 0, 1, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_role_user`
--

CREATE TABLE IF NOT EXISTS `tp_role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` smallint(6) unsigned NOT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_role_user`
--

INSERT INTO `tp_role_user` (`user_id`, `role_id`) VALUES
(3, 2),
(8, 5),
(9, 5);

-- --------------------------------------------------------

--
-- 表的结构 `tp_user`
--

CREATE TABLE IF NOT EXISTS `tp_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `role` smallint(6) unsigned NOT NULL COMMENT '组ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 1:启用 0:禁止',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `last_login_time` int(11) unsigned NOT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(15) DEFAULT NULL COMMENT '最后登录IP',
  `last_location` varchar(100) DEFAULT NULL COMMENT '最后登录位置',
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='用户表' AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `tp_user`
--

INSERT INTO `tp_user` (`id`, `username`, `password`, `role`, `status`, `remark`, `last_login_time`, `last_login_ip`, `last_location`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, '神级管理员,可无视系统权限.', 1369584720, '127.0.0.1', '本机地址'),
(3, 'editor', 'e10adc3949ba59abbe56e057f20f883e', 2, 1, '', 1356967653, '127.0.0.1', ''),
(9, 'mana', 'e10adc3949ba59abbe56e057f20f883e', 5, 1, '', 1369584797, '127.0.0.1', '本机地址');
