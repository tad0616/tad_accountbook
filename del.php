<?php
// 轉換舊檔案到新檔案管理架構
use XoopsModules\Tadtools\Utility;
require_once "header.php";
$ufile = [];
$sql = "select accountbook_sn,file_name from `mXJPA_lijohn_accountbook_file`";
$result = $xoopsDB->query($sql) or Utility::web_error($sql, __FILE__, __LINE__);
while (list($accountbook_sn, $file_name) = $xoopsDB->fetchRow($result)) {
    $ufile[$accountbook_sn] = $file_name;
}

$sql = "select `accountbook_sn` from `mXJPA_lijhon_accountbook_index` order by `accountbook_sn`";
$result = $xoopsDB->query($sql) or Utility::web_error($sql, __FILE__, __LINE__);
while (list($accountbook_sn) = $xoopsDB->fetchRow($result)) {
    $png = XOOPS_ROOT_PATH . '/uploads/lijohn_accountbook/' . $accountbook_sn . '.png';
    if (file_exists($png)) {
        $kind = 'img';
        $file_type = "image/png";
        $filename = "{$accountbook_sn}.png";
        $file = $png;
    } elseif (isset($ufile[$accountbook_sn])) {
        $filename = $ufile[$accountbook_sn];
        $file = XOOPS_ROOT_PATH . '/uploads/lijohn_accountbook/' . $accountbook_sn . '_' . $filename;
        if (substr($filename, -3) == 'pdf') {
            $kind = 'file';
            $file_type = "application/pdf";
        } else {
            $kind = 'img';
            $file_type = "image/jpeg";
        }
    } else {
        continue;
    }

    if (file_exists($file)) {
        $file_size = filesize($file);
        $sql = "insert into `mXJPA_tad_accountbook_files_center` (`col_name`, `col_sn`, `sort`, `kind`, `file_name`, `file_type`, `file_size`, `description`, `counter`, `original_filename`, `hash_filename`, `sub_dir`, `upload_date`, `uid`, `tag`) values( 'accountbook_sn', '{$accountbook_sn}', '0', '$kind', '{$filename}', '$file_type', '$file_size', '{$filename}', '0', '{$filename}', '', '', now(), '123', '')";
        echo "<b>$file ($file_size)</b><br>";
        echo "$sql<br>";
        $xoopsDB->queryF($sql) or Utility::web_error($sql, __FILE__, __LINE__);
    }

}
