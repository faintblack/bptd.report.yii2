<?php

use fedemotta\datatables\DataTables;
use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Term Report';
$this->params['breadcrumbs'][] = 'Laporan';
$this->params['breadcrumbs'][] = 'Data Laporan';
$this->params['breadcrumbs'][] = 'Terminal';
?>
<div class="row">
    <div class="col-sm-12">

        <h4 class="page-title" style="margin-top: 0px;"><?= $this->title; ?></h4>
        <ol class="breadcrumb" style="font-size: 12px; margin-bottom:10px">
            <?php
            foreach ($this->params['breadcrumbs'] as $key => $value) {
            ?>
                <li>
                    <?= $value; ?>
                </li>
            <?php
            }
            ?>

        </ol>
    </div>
</div>
<div class="row">
    <div class="col-lg-12">
        <div class="card-box">
            <h4 class="text-dark header-title m-t-0"><?= $this->title; ?></h4>
            <p>
                <?= Html::a('Create ' . $this->title, ['create'], ['class' => 'btn btn-success']) ?>
            </p>
            <?= DataTables::widget([
                'dataProvider' => $dataProvider,
                'columns' => [
                    [
                        'header' => 'No.',
                        'headerOptions' => ['style' => 'text-align:center;'],
                        'contentOptions' => ['style' => 'text-align:center;'],
                        'class' => 'yii\grid\SerialColumn'
                    ],
                    // 'id_report',
                    // 'id_unit',
                    [
                        'attribute' => 'Tanggal',
                        'headerOptions' => ['style' => 'text-align:center;'],
                        'contentOptions' => ['style' => 'text-align:center;'],
                        'value' => 'tanggal'
                    ],
                    [
                        'attribute' => 'Nama Terminal',
                        'headerOptions' => ['style' => 'text-align:center;'],
                        'contentOptions' => ['style' => 'text-align:center;'],
                        'value' => 'unit.nama_unit'
                    ],
                    [
                        'attribute' => 'Jenis tujuan',
                        'headerOptions' => ['style' => 'text-align:center;'],
                        'contentOptions' => ['style' => 'text-align:center;'],
                        'value' => 'termDetailReports.jenis_tujuan'
                    ],
                    [
                        'attribute' => 'Tipe Perjalanan',
                        'headerOptions' => ['style' => 'text-align:center;'],
                        'contentOptions' => ['style' => 'text-align:center;'],
                        'value' => 'termDetailReports.tipe_perjalanan'
                    ],
                    [
                        'attribute' => 'Kendaraan Datang',
                        'headerOptions' => ['style' => 'text-align:center;'],
                        'contentOptions' => ['style' => 'text-align:center;'],
                        'value' => 'termDetailReports.kendaraan.kendaraan_masuk'
                    ],
                    [
                        'attribute' => 'Kendaraan Berangkat',
                        'headerOptions' => ['style' => 'text-align:center;'],
                        'contentOptions' => ['style' => 'text-align:center;'],
                        'value' => 'termDetailReports.kendaraan.kendaraan_keluar'
                    ],
                    [
                        'attribute' => 'Penumpang Datang',
                        'headerOptions' => ['style' => 'text-align:center;'],
                        'contentOptions' => ['style' => 'text-align:center;'],
                        'value' => 'termDetailReports.penumpang.penumpang_datang'
                    ],
                    [
                        'attribute' => 'Penumpang Berangkat',
                        'headerOptions' => ['style' => 'text-align:center;'],
                        'contentOptions' => ['style' => 'text-align:center;'],
                        'value' => 'termDetailReports.penumpang.penumpang_berangkat'
                    ],

                    [
                        'header' => 'Aksi',
                        'headerOptions' => ['style' => 'text-align:center;'],
                        'contentOptions' => ['style' => 'text-align:center;'],
                        'class' => 'yii\grid\ActionColumn'
                    ],
                ],
            ]); ?>

        </div>
    </div>
</div>
<!-- <div class="term-report-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Term Report', ['create'], ['class' => 'btn btn-success']) ?>
    </p>


    <?= DataTables::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id_report',
            'id_unit',
            'tanggal',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div> -->