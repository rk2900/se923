-- phpMyAdmin SQL Dump
-- version 3.5.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 10, 2013 at 11:50 PM
-- Server version: 5.6.10
-- PHP Version: 5.3.15

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
-- DIRK XU
--
-- Database: `onlinepayment`
--

-- --------------------------------------------------------

--
-- Table structure for table `tp_access`
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
-- Dumping data for table `tp_access`
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
(3, 16, 8, 3, NULL),
(3, 8, 28, 2, NULL),
(3, 28, 13, 0, NULL),
(3, 13, 1, 0, NULL),
(3, 6, 2, 3, NULL),
(3, 7, 2, 3, NULL),
(3, 4, 2, 3, NULL),
(3, 5, 2, 3, NULL),
(3, 3, 2, 3, NULL),
(3, 2, 1, 2, NULL),
(3, 37, 21, 3, NULL),
(3, 22, 21, 3, NULL),
(3, 30, 21, 3, NULL),
(3, 21, 18, 2, NULL),
(3, 18, 1, 0, NULL),
(3, 51, 46, 0, NULL),
(3, 49, 46, 0, NULL),
(3, 15, 25, 0, NULL),
(3, 45, 1, 0, NULL),
(3, 46, 45, 2, NULL),
(3, 47, 46, 3, NULL),
(3, 20, 19, 3, NULL),
(3, 19, 1, 2, NULL),
(1, 20, 19, 3, NULL),
(1, 19, 1, 2, NULL),
(1, 17, 8, 3, NULL),
(1, 11, 8, 3, NULL),
(1, 10, 8, 3, NULL),
(1, 9, 8, 3, NULL),
(1, 16, 8, 3, NULL),
(3, 25, 14, 0, NULL),
(3, 14, 1, 0, NULL),
(3, 1, 0, 1, NULL),
(1, 3, 2, 3, NULL),
(1, 2, 1, 2, NULL),
(1, 38, 21, 3, NULL),
(1, 37, 21, 3, NULL),
(1, 33, 21, 3, NULL),
(2, 20, 19, 3, NULL),
(2, 19, 1, 2, NULL),
(2, 6, 2, 3, NULL),
(2, 7, 2, 3, NULL),
(2, 4, 2, 3, NULL),
(2, 5, 2, 3, NULL),
(2, 3, 2, 3, NULL),
(2, 2, 1, 2, NULL),
(2, 15, 25, 0, NULL),
(2, 25, 14, 0, NULL),
(2, 14, 1, 0, NULL),
(2, 1, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tp_appeal`
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
-- Dumping data for table `tp_appeal`
--

INSERT INTO `tp_appeal` (`id`, `username`, `authname`, `id_number`, `role`, `status`, `phone_number`, `remark`, `pass`) VALUES
(43, '藏红花', '张海', 21474833, 4, 1, 2147483647, '为什么把我拉黑名单', 0),
(44, '我爱IT', '吴海', 66289813, 4, 1, 2147483647, '为什么把我拉黑名单', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tp_authappeal`
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
-- Dumping data for table `tp_authappeal`
--

INSERT INTO `tp_authappeal` (`id`, `username`, `authname`, `id_number`, `role`, `status`, `phone_number`, `remark`, `pass`) VALUES
(41, '王海', '王楷', 2147483647, 4, 1, 522172981, '我爱。。。', 0),
(42, '章sir', '章晶晶', 2147483647, 4, 1, 625581823, '我不爱。。。', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tp_blacklist`
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
  `isvip` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isblack` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='黑名单表' AUTO_INCREMENT=19 ;

--
-- Dumping data for table `tp_blacklist`
--

INSERT INTO `tp_blacklist` (`id`, `username`, `password`, `role`, `status`, `remark`, `last_login_time`, `last_login_ip`, `last_location`, `isvip`, `isblack`) VALUES
(15, 'yingying', 'e10adc3949ba59abbe56e057f20f883e', 4, 1, '胖胖胖', 1366967653, '127.0.0.1', '我不知道啊', 1, 1),
(17, 'lele', '5aee9dbd2a188839105073571bee1b1f', 4, 1, '瘦啊啊啊啊', 1356967653, '127.0.0.1', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tp_deal`
--

CREATE TABLE IF NOT EXISTS `tp_deal` (
  `deal_id` int(11) NOT NULL AUTO_INCREMENT,
  `buyer` int(11) NOT NULL,
  `seller` int(11) NOT NULL,
  `time` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `about` varchar(45) COLLATE utf8_unicode_ci DEFAULT 'hehe',
  PRIMARY KEY (`deal_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tp_deal`
--

INSERT INTO `tp_deal` (`deal_id`, `buyer`, `seller`, `time`, `status`, `about`) VALUES
(2, 3, 1, '1369534785', 1, '这里需要把买家和卖家设定为可跳转链接，同时状态参数需要丰富一下。');

-- --------------------------------------------------------

--
-- Table structure for table `tp_list`
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
  `isvip` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isblack` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='VIP表' AUTO_INCREMENT=106 ;

--
-- Dumping data for table `tp_list`
--

INSERT INTO `tp_list` (`id`, `username`, `password`, `role`, `status`, `remark`, `last_login_time`, `last_login_ip`, `last_location`, `isvip`, `isblack`) VALUES
(10, 'leilei', '21232f297a57a5a743894a0e4a801fc3', 4, 1, '胖，圆', 1357142930, '127.0.0.1', '', 0, 0),
(12, 'yaya', '5aee9dbd2a188839105073571bee1b1f', 4, 1, '瘦', 1356967653, '127.0.0.1', '', 0, 0),
(15, 'yingying', 'e10adc3949ba59abbe56e057f20f883e', 4, 1, '胖胖胖', 1366967653, '127.0.0.1', '我不知道啊', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tp_node`
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=68 ;

--
-- Dumping data for table `tp_node`
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
(13, 'extend', '扩展功能', 1, '', 1, 0, '', 9, 0),
(14, 'public_main', '我的面板', 1, '', 1, 0, '', 40, 1),
(15, 'main', '系统环境', 1, '快捷菜单', 25, 0, '?s=/Admin/Index/main', 10, 2),
(16, 'index', '菜单列表', 1, '', 8, 3, '', 5, 0),
(17, 'sort', '菜单排序', 1, '', 8, 3, '', 1, 0),
(18, 'UserCenter', '用户管理', 1, '', 1, 0, '', 20, 1),
(19, 'cache', '缓存模块', 1, '', 1, 2, '', 0, 0),
(20, 'delCore', '删除核心缓存', 1, '', 19, 3, '', 0, 0),
(21, 'User', '后台用户管理', 1, '', 18, 2, '', 0, 2),
(22, 'role', '角色管理', 1, '', 21, 3, '?s=/Admin/User/role', 4, 2),
(23, 'role_add', '角色添加', 1, '', 21, 3, '?s=/Admin/User/role_add', 0, 0),
(25, 'my', '我的面板', 1, '', 14, 0, '', 0, 2),
(30, 'index', '后台用户管理', 1, '', 21, 3, '?s=/Admin/User/index', 10, 2),
(28, 'extend_sub', '扩展功能', 1, '', 13, 0, '', 0, 2),
(31, 'role_edit', '角色编辑', 1, '', 21, 3, '', 0, 0),
(32, 'role_del', '角色删除', 1, '', 21, 3, '', 0, 0),
(33, 'role_sort', '角色排序', 1, '', 21, 3, '', 0, 0),
(34, 'add', '后台用户添加', 1, '', 21, 3, '', 9, 0),
(35, 'edit', '后台用户编辑', 1, '', 21, 3, '', 8, 0),
(36, 'del', '后台用户删除', 1, '', 21, 3, '', 7, 0),
(37, 'access', '角色权限浏览', 1, '', 21, 3, '', 0, 0),
(38, 'access_edit', '角色权限编辑', 1, '', 21, 3, '', 0, 0),
(40, 'check_username', '检查用户名', 1, 'ajax验证', 21, 3, '', 6, 0),
(47, 'conf', '浏览网站各配置信息', 1, '', 46, 3, '', 0, 0),
(45, 'system_settings', '系统设置', 1, '', 1, 0, '', 30, 1),
(46, 'Config', '系统配置', 1, '', 45, 2, '', 0, 2),
(48, 'updateweb', '更新网站相关配置', 1, '', 46, 3, '', 0, 0),
(49, 'confweb', '网站信息设置', 1, '', 46, 0, '?s=/Admin/Config/conf/id/web', 0, 2),
(50, 'updatedb', '更新数据库链接配置', 1, '', 46, 3, '', 0, 0),
(51, 'confdb', '数据库链接配置', 1, '', 46, 0, '?s=/Admin/Config/conf/id/db', 0, 2),
(57, 'deal', '交易记录', 1, '', 1, 0, '', 0, 1),
(59, 'Deal', '交易记录', 1, '', 57, 2, '', 0, 2),
(60, 'list_index', '查看所有交易记录', 1, '', 59, 3, '?s=/Admin/Deal/index', 0, 2),
(61, 'auth_appeal', '认证与申诉', 1, '', 1, 0, '', 0, 1),
(62, 'Authappeal', '认证与申诉', 1, '', 61, 2, '', 0, 2),
(63, 'auth', '实名认证', 1, '', 62, 3, '?s=/Admin/Authappeal/index', 0, 2),
(65, 'appeal', '申诉', 1, '', 62, 3, '?s=/Admin/Authappeal/appeal', 0, 2),
(66, 'index', 'VIP名单管理', 1, '', 21, 3, '?s=/Admin/List/index', 0, 2),
(67, 'blacklist', '黑名单管理', 1, '', 21, 3, '?s=/Admin/List/blacklist', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tp_role`
--

CREATE TABLE IF NOT EXISTS `tp_role` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tp_role`
--

INSERT INTO `tp_role` (`id`, `name`, `pid`, `status`, `sort`, `remark`, `isvip`, `isblack`) VALUES
(1, '超级管理员', 0, 1, 50, '超级管理员组', 0, 0),
(2, '编辑', 0, 1, 40, '编辑组', 1, 0),
(3, '站点监督员', 0, 1, 49, '站点监督员组', 0, 0),
(4, '普通用户', 0, 1, 0, '卖家，买家', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tp_role_user`
--

CREATE TABLE IF NOT EXISTS `tp_role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` smallint(6) unsigned NOT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tp_user`
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
  `isvip` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isblack` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='用户表' AUTO_INCREMENT=19 ;

--
-- Dumping data for table `tp_user`
--

INSERT INTO `tp_user` (`id`, `username`, `password`, `role`, `status`, `remark`, `last_login_time`, `last_login_ip`, `last_location`, `isvip`, `isblack`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 1, '神级管理员,可无视系统权限.', 1370877912, '0.0.0.0', 'IANA保留地址', 0, 0),
(3, 'editor', '5aee9dbd2a188839105073571bee1b1f', 2, 1, '', 1356967653, '127.0.0.1', '', 0, 0),
(10, 'leilei', '21232f297a57a5a743894a0e4a801fc3', 4, 1, '胖，圆', 1357142930, '127.0.0.1', '', 1, 0),
(12, 'yaya', '5aee9dbd2a188839105073571bee1b1f', 4, 1, '瘦', 1356967653, '127.0.0.1', '', 1, 0),
(15, 'yingying', 'e10adc3949ba59abbe56e057f20f883e', 4, 1, '胖胖胖', 1366967653, '127.0.0.1', '我不知道啊', 1, 1),
(16, 'meimei', '21232f297a57a5a743894a0e4a801fc3', 4, 1, '圆得要死', 1357142930, '127.0.0.1', '', 0, 0),
(17, 'lele', '5aee9dbd2a188839105073571bee1b1f', 4, 1, '瘦啊啊啊啊', 1356967653, '127.0.0.1', '', 0, 1),
(18, 'hahaha', '21232f297a57a5a743894a0e4a801fc3', 4, 1, '圆啊啊啊', 1357142930, '127.0.0.1', '', 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
