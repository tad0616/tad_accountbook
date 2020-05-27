<?php
use XoopsModules\Tadtools\TadModData;
use XoopsModules\Tadtools\Utility;
require_once "header.php";
$op_prfix = 'accountbook_item';

$accountbook_item = new TadModData(basename(__DIR__), 'tad_accountbook_item');
$clean = $accountbook_item->clean();
$accountbook_item->width(2, 10);
$item_sn_arr = $accountbook_item->get_arr('tad_accountbook_item', 'item_sn', 'item_name');
$accountbook_item->use_select('of_item_sn', $item_sn_arr, $clean['item_sn']);
$accountbook_item->replace('of_item_sn', $item_sn_arr);

switch ($op) {
    case "create":
        $accountbook_item->create();
        break;

    case "edit":
        $accountbook_item->edit($clean['item_sn']);
        break;

    case "show":
        $accountbook_item->show($clean['item_sn']);
        break;

    case "update":
        $accountbook_item->update($clean['item_sn']);
        header("location:{$self}");
        exit;

    case "store":
        $accountbook_item->store();
        header("location:{$self}");
        exit;

    case "destroy":
        $accountbook_item->destroy($clean['item_sn']);
        header("location:{$self}");
        exit;

    default:
        $accountbook_item->order(['item_sort' => '']);
        $accountbook_item->index();
        break;
}
require_once "footer.php";
