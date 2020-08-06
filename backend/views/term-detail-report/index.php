<?php

use backend\models\TermKendaraan;
use fedemotta\datatables\DataTables;
use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Term Detail Reports';
$this->params['breadcrumbs'][] = 'Laporan';
$this->params['breadcrumbs'][] = 'Data Laporan';
$this->params['breadcrumbs'][] = 'SDP';
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
                // 'id' => '',
                'columns' => [
                    [
                        'header' => 'No.',
                        'headerOptions' => ['style' => 'text-align:center;'],
                        'contentOptions' => ['style' => 'text-align:center;'],
                        'class' => 'yii\grid\SerialColumn'
                    ],
                    [
                        'attribute' => 'Tanggal',
                        'headerOptions' => ['style' => 'text-align:center;'],
                        'contentOptions' => ['style' => 'text-align:center;'],
                        'value' => function ($model){
                            // Buat konversi tanggal menjadi nama bulan plain text (Ex : 1 Agustus 2020)
                            $tanggal = $model->tanggal;
                            $bulan = substr($tanggal,5,2);
                            $months = [
                                '01' => 'Januari',
                                '02' => 'Februari',
                                '03' => 'Maret',
                                '04' => 'April',
                                '05' => 'Mei',
                                '06' => 'Juni',
                                '07' => 'Juli',
                                '08' => 'Agustus',
                                '09' => 'September',
                                '10' => 'Oktober',
                                '11' => 'November',
                                '12' => 'Desember',
                            ];
                            return substr($tanggal,8,2). ' ' .$months[$bulan]. ' ' .substr($tanggal, 0,4);
                        }
                    ],
                    [
                        'attribute' => 'Nama Terminal',
                        'headerOptions' => ['style' => 'text-align:center;'],
                        'contentOptions' => ['style' => 'text-align:center;'],
                        'value' => 'unit.nama_unit'
                    ],
                    [
                        'attribute' => 'Jenis Tujuan',
                        'headerOptions' => ['style' => 'text-align:center;'],
                        'contentOptions' => ['style' => 'text-align:center;'],
                        'value' => 'jenis_tujuan'
                    ],
                    [
                        'attribute' => 'Tipe Perjalanan',
                        'headerOptions' => ['style' => 'text-align:center;'],
                        'contentOptions' => ['style' => 'text-align:center;'],
                        'value' => 'tipe_perjalanan'
                    ],
                    [
                        'attribute' => 'Kendaraan Datang',
                        'headerOptions' => ['style' => 'text-align:center;'],
                        'contentOptions' => ['style' => 'text-align:center;'],
                        'value' => 'kendaraan.kendaraan_masuk'
                    ],
                    [
                        'attribute' => 'Kendaraan Berangkat',
                        'headerOptions' => ['style' => 'text-align:center;'],
                        'contentOptions' => ['style' => 'text-align:center;'],
                        'value' => 'kendaraan.kendaraan_keluar'
                    ],
                    [
                        'attribute' => 'Penumpang Datang',
                        'headerOptions' => ['style' => 'text-align:center;'],
                        'contentOptions' => ['style' => 'text-align:center;'],
                        'value' => 'penumpang.penumpang_datang'
                    ],
                    [
                        'attribute' => 'Penumpang Berangkat',
                        'headerOptions' => ['style' => 'text-align:center;'],
                        'contentOptions' => ['style' => 'text-align:center;'],
                        'value' => 'penumpang.penumpang_berangkat'
                    ],
                ],
                'clientOptions' => [
                    "info"=>false,
                    "responsive"=>true, 
                    'scrollX' => true,
                ],
            ]); ?>
        </div>
    </div>
</div>
<!-- <div class="term-detail-report-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Term Detail Report', ['create'], ['class' => 'btn btn-success']) ?>
    </p>


    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id_detail_report',
            'id_unit',
            'id_kendaraan',
            'id_penumpang',
            'jenis_tujuan',
            //'tipe_perjalanan',
            //'tanggal',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div> -->