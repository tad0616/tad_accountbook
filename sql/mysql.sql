CREATE TABLE `tad_accountbook` (
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


CREATE TABLE `tad_accountbook_item` (
  `item_sn` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '分類項目編號',
  `of_item_sn` smallint(6) DEFAULT '0' COMMENT '分類項目父編號',
  `item_name` varchar(255) NOT NULL DEFAULT '' COMMENT '分類項目',
  `item_sort` smallint(6) DEFAULT '0' COMMENT '分類排序',
  `item_note` text COMMENT '分類說明',
  PRIMARY KEY (`item_sn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `tad_accountbook_files_center` (
  `files_sn` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '檔案流水號',
  `col_name` varchar(255) NOT NULL default '' COMMENT '欄位名稱',
  `col_sn` smallint(5) unsigned NOT NULL default 0 COMMENT '欄位編號',
  `sort` smallint(5) unsigned NOT NULL default 0 COMMENT '排序',
  `kind` enum('img','file') NOT NULL default 'img' COMMENT '檔案種類',
  `file_name` varchar(255) NOT NULL default '' COMMENT '檔案名稱',
  `file_type` varchar(255) NOT NULL default '' COMMENT '檔案類型',
  `file_size` int(10) unsigned NOT NULL default 0 COMMENT '檔案大小',
  `description` text NOT NULL COMMENT '檔案說明',
  `counter` mediumint(8) unsigned NOT NULL default 0 COMMENT '下載人次',
  `original_filename` varchar(255) NOT NULL default '' COMMENT '檔案名稱',
  `hash_filename` varchar(255) NOT NULL default '' COMMENT '加密檔案名稱',
  `sub_dir` varchar(255) NOT NULL default '' COMMENT '檔案子路徑',
  `upload_date` datetime NOT NULL COMMENT '上傳時間',
  `uid` mediumint(8) unsigned NOT NULL default 0 COMMENT '上傳者',
  `tag` varchar(255) NOT NULL default '' COMMENT '註記',
PRIMARY KEY (`files_sn`)
) ENGINE=MyISAM;