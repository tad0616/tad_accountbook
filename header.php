<?php
use Xmf\Request;
use XoopsModules\Tadtools\TadUpFiles;

//載入XOOPS主設定檔（必要）
include_once "../../mainfile.php";
include_once 'preloads/autoloader.php';
include_once "function.php";

$xoopsOption['template_main'] = "tad_accountbook_index.tpl";
include_once XOOPS_ROOT_PATH . "/header.php";

$op = Request::getString('op');
$self = Request::getString('PHP_SELF', '', 'SERVER');
$from = Request::getString('HTTP_REFERER', '', 'SERVER');
$files_sn = Request::getInt('files_sn');

//下載檔案
if ($op == 'tufdl') {
    $TadUpFiles = new TadUpFiles(basename(__DIR__));
    $TadUpFiles->add_file_counter($files_sn);
    exit;
}
