<{$toolbar}>

<h2 class="my"><{$tad_accountbook.accountbook_title}></h2>

<{assign var=item_sn value=$tad_accountbook.item_sn}>
<table class="table table-bordered" style="background:white;">
    <tr>
        <th class="c n">分類項目</th>
        <td><{$item_sn_arr.$item_sn}></td>
    </tr>
    <tr>
        <th class="c n">收入</th>
        <td>
            <{if $tad_accountbook.amount >= 0}>
                <{$tad_accountbook.amount}>
            <{/if}>
        </td>
    </tr>
    <tr>
        <th class="c n">支出</th>
        <td>
            <{if $tad_accountbook.amount < 0}>
                <{$tad_accountbook.amount}>
            <{/if}>
        </td>
    </tr>
    <tr>
        <th class="c n">單據圖檔</th>
        <td>
            <{$tad_accountbook.pic}>
        </td>
    </tr>
    <tr>
        <th class="c n">附件</th>
        <td>
            <{$tad_accountbook.files}>
        </td>
    </tr>
    <tr>
        <th class="c n">日期</th>
        <td>
            <{$tad_accountbook.accountbook_date}>
        </td>
    </tr>
</tr>
</table>
