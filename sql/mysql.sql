CREATE TABLE `tad_accountbook_index` (
  `accountbook_sn` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '紀錄編號',
  `item_sn` smallint(6) NOT NULL DEFAULT '0' COMMENT '分類項目',
  `amount_state` enum('1','0') NOT NULL DEFAULT '1' COMMENT '使用狀態',
  `amount` mediumint(9) NOT NULL DEFAULT '0' COMMENT '金額',
  `uid` mediumint(9) NOT NULL DEFAULT '0' COMMENT '使用者編號',
  `accountbook_title` text NOT NULL COMMENT '說明',
  `accountbook_date` date NOT NULL DEFAULT '0000-00-00' COMMENT '日期',
  PRIMARY KEY (`accountbook_sn`),
  KEY `item_sn` (`item_sn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `tad_accountbook_file` (
  `file_sn` smallint(6) NOT NULL AUTO_INCREMENT,
  `accountbook_sn` smallint(6) NOT NULL DEFAULT '0',
  `file_name` text NOT NULL,
  PRIMARY KEY (`file_sn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `tad_accountbook_item` (
  `item_sn` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '分類項目編號',
  `of_item_sn` smallint(6) DEFAULT '0' COMMENT '分類項目父編號',
  `item_name` varchar(255) NOT NULL DEFAULT '' COMMENT '分類項目',
  `item_sort` smallint(6) DEFAULT '0' COMMENT '分類排序',
  `item_note` text COMMENT '分類說明',
  PRIMARY KEY (`item_sn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
