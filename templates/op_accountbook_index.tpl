<{$toolbar}>

<h2 class="my">收支明細</h2>
<table class="table table-bordered" style="width:auto; background:white;">
<tr class="bg-info white">
    <th class="c n">分類項目</th>
    <th class="c n">收入</th>
    <th class="c n">支出</th>
    <th class="c n">說明</th>
    <th class="c n">附件</th>
    <th class="c n">日期</th>
    <th class="c n">功能</th>
</tr>
<{foreach from=$tad_accountbook item=acc}>
    <tr>
        <td class="m">
            <{assign var=item_sn value=$acc.item_sn}>
            <{$item_sn_arr.$item_sn}>
        </td>
        <td class="text-success r">
            <{if $acc.amount >= 0}>
                <{$acc.amount}>
            <{/if}>
        </td>
        <td class="text-danger r">
            <{if $acc.amount < 0}>
                <{$acc.amount}>
            <{/if}>
        </td>
        <td>
            <a href="index.php?op=show&accountbook_sn=<{$acc.accountbook_sn}>">
                <{$acc.accountbook_title}>
            </a>
        </td>
        <td class="c">
            <{$acc.files}>
        </td>
        <td class="c n">
            <{$acc.accountbook_date}>
        </td>
        <td class="c n">
            <{if $smarty.session.tad_accountbook_adm}>
            <a href="index.php?op=edit&accountbook_sn=<{$acc.accountbook_sn}>" class="btn btn-warning btn-sm">編輯</a>
            <a href="<{$acc.del}>" class="btn btn-danger btn-sm">刪除</a>
            <{/if}>
        </td>
    </tr>
<{/foreach}>
</table>

<{$bar}>