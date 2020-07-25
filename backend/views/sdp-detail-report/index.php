<?php

use backend\models\SdpMuatanKendaraan;
use fedemotta\datatables\DataTables;
use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Sdp Detail Reports';
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
                        'value' => 'report.tanggal'
                    ],
                    [
                        'attribute' => 'Nama Perusahaan',
                        'headerOptions' => ['style' => 'text-align:center;'],
                        'contentOptions' => ['style' => 'text-align:center;'],
                        'value' => 'report.unit.nama_unit'
                    ],
                    // 'kmp',
                    [
                        'attribute' => 'KMP',
                        'headerOptions' => ['style' => 'text-align:center;'],
                        'contentOptions' => ['style' => 'text-align:center;'],
                        'value' => 'kmp.nama_kmp'
                    ],
                    // 'trayek',
                    [
                        'attribute' => 'Trayek',
                        'headerOptions' => ['style' => 'text-align:center;'],
                        'contentOptions' => ['style' => 'text-align:center;'],
                        'value' => 'kmp.trayek.nama_trayek'
                    ],
                    // 'frekuensi trip',
                    [
                        'attribute' => 'Frekuensi Trip',
                        'headerOptions' => ['style' => 'text-align:center;'],
                        'contentOptions' => ['style' => 'text-align:center;'],
                        'value' => 'frekuensi_trip'
                    ],
                    // 'jml kendaraan',
                    [
                        'attribute' => 'Jumlah Kendaraan',
                        'headerOptions' => ['style' => 'text-align:center;'],
                        'contentOptions' => ['style' => 'text-align:center;'],
                        'value' => function($model){
                            $data_kendaraan = SdpMuatanKendaraan::find()->where(['id_detail_report' => $model->id_detail_report])->all();
                            $jumlah_kendaraan = 0;
                            foreach ($data_kendaraan as $key => $value) {
                                $jumlah_kendaraan += $value['jumlah_kendaraan'];
                            }
                            return $jumlah_kendaraan;
                        }
                    ],
                    // 'jml pnp',
                    //'load_factor_kendaraan',
                    //'load_factor_penumpang',

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
<!-- <div class="sdp-detail-report-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Sdp Detail Report', ['create'], ['class' => 'btn btn-success']) ?>
    </p>


    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id_detail_report',
            'id_report',
            'id_kmp',
            'id_muatan_penumpang',
            'frekuensi_trip',
            //'load_factor_kendaraan',
            //'load_factor_penumpang',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div> -->