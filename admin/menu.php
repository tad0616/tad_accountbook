<?php
use XoopsModules\Tadtools\TadMod;
$TadMod = new TadMod(basename(__DIR__));
$TadMod->add_adm_menu('項目管理', 'admin/main.php', 'images/admin/button.png');
$adminmenu = $TadMod->get_adm_menu();
