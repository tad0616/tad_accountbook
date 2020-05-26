<?php
use Xmf\Request;

//載入XOOPS主設定檔（必要）
include_once "../../mainfile.php";
include_once 'preloads/autoloader.php';
include_once "function.php";
include_once "interface_menu.php";

$xoopsOption['template_main'] = "tad_accountbook_index.tpl";
include_once XOOPS_ROOT_PATH . "/header.php";

$op = Request::getString('op');
$self = Request::getString('PHP_SELF', '', 'SERVER');
$from = Request::getString('HTTP_REFERER', '', 'SERVER');
