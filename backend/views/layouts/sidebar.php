<?php

use yii\helpers\Html;
use yii\helpers\Url;

$level_akses = Yii::$app->user->identity->attributes['level_akses'];
$unit = null;
if ($level_akses == 'unit') {
    $unit = Yii::$app->user->identity->units->attributes['unit'];
}
// print_r($unit);exit();

?>
<!--- Divider -->
<div id="sidebar-menu" style="padding-top: 0px;">
    <ul>
        <li class="has_sub">
            <a href="<?= Url::to(['/']) ?>" class="waves-effect"><i class="ti-home"></i> <span> Beranda </span></a>
        </li>

        <?php
        if ($unit == 'SDP' || $level_akses == 'admin') {
        ?>
            <li class="has_sub">
                <a href="javascript:void(0);" class="waves-effect"><i class="glyphicon glyphicon-th-large"></i> <span> Data Master </span> <span class="menu-arrow"></span> </a>
                <ul class="list-unstyled">
                    <?php
                    if ($level_akses == 'admin') {
                    ?>
                    <li><a href="<?= Url::to(['data-daerah/index']) ?>">Data Daerah</a></li>
                    <li><a href="<?= Url::to(['data-jenis-muatan/index']) ?>">Data Jenis Muatan</a></li>
                    <li><a href="<?= Url::to(['data-trayek/index']) ?>">Data Trayek SDP</a></li>
                    <li><a href="<?= Url::to(['pengguna/index']) ?>">Pengguna</a></li>
                    <?php
                    } else if($unit == 'SDP') {
                    ?>
                    <li><a href="<?= Url::to(['data-trayek/index']) ?>">Data Trayek SDP</a></li>
                    <?php
                    }
                    ?>
                    
                </ul>
            </li>
        <?php
        }
        ?>

        <!-- SATUAN PELAYANAN -->
        <?php
        if ($level_akses == 'admin') {
        ?>
        <li><a href="<?= Url::to(['unit/index']) ?>" class="waves-effect"><i class="md-directions-bus"></i> <span> Satuan Pelayanan </span> </a></li>
        <?php
        }
        ?>

        <!-- DATA KMP -->
        <li><a href="<?= Url::to(['data-kmp/index']) ?>" class="waves-effect"><i class="md-directions-ferry"></i> <span> Data KMP </span> </a></li>

        <!-- MENU LAPORAN -->
        <li class="has_sub">
            <a href="javascript:void(0);" class="waves-effect"><i class="md-description"></i> <span> Laporan </span> <span class="menu-arrow"></span> </a>
            <ul class="list-unstyled">
                <!-- DATA LAPORAN -->
                <li class="has_sub">
                    <a href="javascript:void(0);" id="menu_laporan" class="waves-effect"><span>Data Laporan </span> <span class="menu-arrow"></span></a>
                    <ul class="list-unstyled">
                        <li id="li-laporan_terminal"><a href="<?= Url::to(['term-report/index']) ?>"><span>Terminal</span></a></li>
                        <li id="li-laporan_uppkb"><a href="<?= Url::to(['uppkb-report/index']) ?>"><span>UPPKB</span></a></li>
                        <li id="li-laporan_sdp"><a href="<?= Url::to(['sdp-detail-report/index']) ?>"><span>SDP</span></a></li>
                    </ul>
                </li>
                <!-- CETAK LAPORAN -->
                <li><a href="javascript:void(0);" id="menu_cetak_laporan" class="waves-effect"><span>Cetak Laporan </span> <span class="menu-arrow"></span></a>
                    <ul>
                        <li id="li-cetak_laporan_terminal"><a href="<?php echo 'admin/cetaklaporan/terminal'; ?>"><span>Terminal</span></a></li>
                        <li id="li-cetak_laporan_uppkb"><a href="<?php echo 'admin/cetaklaporan/uppkb'; ?>"><span>UPPKB</span></a></li>
                        <li id="li-cetak_laporan_sdp"><a href="<?php echo 'admin/cetaklaporan/sdp'; ?>"><span>SDP</span></a></li>
                    </ul>
                </li>
            </ul>
        </li>

        <!-- LOG -->
        <li><a href="<?php echo 'admin/log'; ?>" class="waves-effect"><i class="glyphicon glyphicon-time"></i> <span> Log </span> </a></li>

        <li class="has_sub">
            <a href="<?= Url::to(['/gii']) ?>" class="waves-effect"><i class="ti-home"></i> <span> Gii </span></a>
        </li>

    </ul>
    <div class="clearfix"></div>
</div>
<div class="clearfix"></div>