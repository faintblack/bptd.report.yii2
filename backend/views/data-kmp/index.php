<?php

use fedemotta\datatables\DataTables;
use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Data Kmp';
$this->params['breadcrumbs'][] = $this->title;
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
                        'attribute' => 'Nama Kapal',
                        'headerOptions' => ['style' => 'text-align:center;'],
                        'contentOptions' => ['style' => 'text-align:center;'],
                        'value' => 'nama_kmp'
                    ],
                    [
                        'attribute' => 'Nama Unit',
                        'headerOptions' => ['style' => 'text-align:center;'],
                        'contentOptions' => ['style' => 'text-align:center;'],
                        'value' => 'unit.nama_unit'
                    ],
                    [
                        'attribute' => 'Nama Trayek',
                        'headerOptions' => ['style' => 'text-align:center;'],
                        'contentOptions' => ['style' => 'text-align:center;'],
                        'value' => 'trayek.nama_trayek'
                    ],
                    [
                        'attribute' => 'GRT',
                        'headerOptions' => ['style' => 'text-align:center;'],
                        'contentOptions' => ['style' => 'text-align:center;'],
                        'value' => 'GRT'
                    ],
                    //'kapasitas_penumpang',
                    //'kapasitas_kendaraan',
                    //'keterangan',
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
<!-- <div class="data-kmp-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Data Kmp', ['create'], ['class' => 'btn btn-success']) ?>
    </p>


    <?= DataTables::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            //'id_kmp',
            'nama_kmp',
            'unit.nama_unit',
            'trayek.nama_trayek',
            'GRT',
            //'kapasitas_penumpang',
            //'kapasitas_kendaraan',
            //'keterangan',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div> -->