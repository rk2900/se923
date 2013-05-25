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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='黑名单表' ;


INSERT INTO `tp_blacklist` (`id`, `username`, `password`, `role`, `status`, `remark`, `last_login_time`, `last_login_ip`, `last_location`) VALUES
(1, 'dirk', '21232f297a57a5a743894a0e4a801fc3', 1, 1, '神级管理员,可无视系统权限.', 1357142930, '127.0.0.1', '本机地址'),
(3, 'rk', '5aee9dbd2a188839105073571bee1b1f', 2, 1, '', 1356967653, '127.0.0.1', '');
