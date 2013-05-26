/*
 Navicat MySQL Data Transfer

 Source Server         : local
 Source Server Version : 50611
 Source Host           : localhost
 Source Database       : test

 Target Server Version : 50611
 File Encoding         : utf-8

 Date: 05/26/2013 19:35:15 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

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
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `tp_node`
-- ----------------------------
BEGIN;
INSERT INTO `tp_node` VALUES ('1', 'cms', '根节点', '1', '不可删除', '0', '1', null, '0', '0'), ('2', 'index', '后台主框架模块', '1', '所有后台用户组都必须有此权限，否则后台无法登录', '1', '2', '', '10', '0'), ('3', 'index', 'index方法', '1', 'Index模块的index方法', '2', '3', '', '5', '0'), ('4', 'left', 'left方法', '1', 'Index模块的left方法', '2', '3', '', '3', '0'), ('5', 'top', 'top方法', '1', 'Index模块的top方法', '2', '3', '', '4', '0'), ('6', 'main', 'main方法', '1', 'Index模块的main方法', '2', '3', '', '1', '0'), ('7', 'footer', 'footer方法', '1', 'Index模块的footer方法', '2', '3', '', '2', '0'), ('8', 'Node', '菜单节点管理', '1', '', '28', '2', '?s=/Admin/Node/index', '1', '2'), ('9', 'add', '添加菜单', '1', '', '8', '3', '', '4', '0'), ('10', 'edit', '修改菜单', '1', '', '8', '3', '', '3', '0'), ('11', 'del', '删除菜单', '1', '', '8', '3', '', '2', '0'), ('13', 'extend', '扩展功能', '1', '', '1', '0', '', '9', '1'), ('14', 'public_main', '我的面板', '1', '', '1', '0', '', '40', '1'), ('15', 'main', '系统环境', '1', '快捷菜单', '25', '0', '?s=/Admin/Index/main', '10', '2'), ('16', 'index', '菜单列表', '1', '', '8', '3', '', '5', '0'), ('17', 'sort', '菜单排序', '1', '', '8', '3', '', '1', '0'), ('18', 'UserCenter', '用户管理', '1', '', '1', '0', '', '20', '1'), ('19', 'cache', '缓存模块', '1', '', '1', '2', '', '0', '0'), ('20', 'delCore', '删除核心缓存', '1', '', '19', '3', '', '0', '0'), ('21', 'User', '后台用户管理', '1', '', '18', '2', '', '0', '2'), ('22', 'role', '角色管理', '1', '', '21', '3', '?s=/Admin/User/role', '4', '2'), ('23', 'role_add', '角色添加', '1', '', '21', '3', '?s=/Admin/User/role_add', '0', '0'), ('25', 'my', '我的面板', '1', '', '14', '0', '', '0', '2'), ('30', 'index', '后台用户管理', '1', '', '21', '3', '?s=/Admin/User/index', '10', '2'), ('28', 'extend_sub', '扩展功能', '1', '', '13', '0', '', '0', '2'), ('31', 'role_edit', '角色编辑', '1', '', '21', '3', '', '0', '0'), ('32', 'role_del', '角色删除', '1', '', '21', '3', '', '0', '0'), ('33', 'role_sort', '角色排序', '1', '', '21', '3', '', '0', '0'), ('34', 'add', '后台用户添加', '1', '', '21', '3', '', '9', '0'), ('35', 'edit', '后台用户编辑', '1', '', '21', '3', '', '8', '0'), ('36', 'del', '后台用户删除', '1', '', '21', '3', '', '7', '0'), ('37', 'access', '角色权限浏览', '1', '', '21', '3', '', '0', '0'), ('38', 'access_edit', '角色权限编辑', '1', '', '21', '3', '', '0', '0'), ('40', 'check_username', '检查用户名', '1', 'ajax验证', '21', '3', '', '6', '0'), ('47', 'conf', '浏览网站各配置信息', '1', '', '46', '3', '', '0', '0'), ('45', 'system_settings', '系统设置', '1', '', '1', '0', '', '30', '1'), ('46', 'Config', '系统配置', '1', '', '45', '2', '', '0', '2'), ('48', 'updateweb', '更新网站相关配置', '1', '', '46', '3', '', '0', '0'), ('49', 'confweb', '网站信息设置', '1', '', '46', '0', '?s=/Admin/Config/conf/id/web', '0', '2'), ('50', 'updatedb', '更新数据库链接配置', '1', '', '46', '3', '', '0', '0'), ('51', 'confdb', '数据库链接配置', '1', '', '46', '0', '?s=/Admin/Config/conf/id/db', '0', '2'), ('53', 'list_manager', '名单管理', '1', '', '1', '0', '', '0', '1'), ('54', 'List', '名单管理', '1', '', '53', '2', '', '0', '2'), ('55', 'index', 'VIP名单管理', '1', '', '54', '3', '?s=/Admin/List/index', '0', '2'), ('56', 'blacklist', '黑名单管理', '1', '', '54', '3', '?s=/Admin/List/blacklist', '0', '2'), ('57', 'deal', '交易记录', '1', '', '1', '0', '', '0', '1'), ('59', 'Deal', '交易记录', '1', '', '57', '2', '', '0', '2'), ('60', 'list_index', '查看所有交易记录', '1', '', '59', '3', '?s=/Admin/Deal/index', '0', '2');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
