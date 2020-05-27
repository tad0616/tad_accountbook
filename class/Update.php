<?php

/*
namespace XoopsModules\模組首字大寫目錄;

use XoopsModules\Tadtools\Utility;

class Update
{

//檢查欄位
public static function chk_chk1()
{
global $xoopsDB;
$sql = 'SELECT count(`欄位`) FROM ' . $xoopsDB->prefix('表格');
$result = $xoopsDB->query($sql);
if (empty($result)) {
return true;
}

return true;
}

//新增欄位
public static function go_update1()
{
global $xoopsDB;
$sql = 'ALTER TABLE ' . $xoopsDB->prefix('表格') . ' ADD `欄位` varchar(255) NOT NULL';
$xoopsDB->queryF($sql) or Utility::web_error($sql, __FILE__, __LINE__);
}

}
 */
