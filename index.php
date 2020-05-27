<?php
use XoopsModules\Tadtools\TadModData;
use XoopsModules\Tadtools\Utility;
require_once "header.php";
$op_prfix = 'accountbook';

$accountbook = new TadModData(basename(__DIR__), 'tad_accountbook');
$clean = $accountbook->clean();
$accountbook->width(2, 10);
$item_sn_arr = $accountbook->get_arr('tad_accountbook_item', 'item_sn', 'item_name');
$accountbook->use_select('item_sn', $item_sn_arr, $clean['accountbook_sn']);
$accountbook->use_radio('amount_state', [1 => '收入', 0 => '支出'], $clean['accountbook_sn']);
$accountbook->use_file('accountbook_sn');

switch ($op) {
    case "create":
        $accountbook->create();
        break;

    case "edit":
        $accountbook->edit($clean['accountbook_sn']);
        break;

    case "show":
        $accountbook->show($clean['accountbook_sn']);
        break;

    case "update":
        $accountbook->update($clean['accountbook_sn']);
        header("location:{$self}?op=show&accountbook_sn={$clean['accountbook_sn']}");
        exit;

    case "store":
        $accountbook_sn = $accountbook->store();
        header("location:{$self}?op=show&accountbook_sn={$accountbook_sn}");
        exit;

    case "destroy":
        $accountbook->destroy($clean['accountbook_sn']);
        header("location:{$self}");
        exit;

    default:
        $accountbook->pagebar(10);
        $accountbook->order(['accountbook_date' => 'desc']);
        $accountbook->index();
        break;
}
require_once "footer.php";
