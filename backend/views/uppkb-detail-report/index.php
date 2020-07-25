<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Uppkb Detail Reports';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="uppkb-detail-report-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Uppkb Detail Report', ['create'], ['class' => 'btn btn-success']) ?>
    </p>


    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id_detail_report',
            'id_unit',
            'no_ktp_supir',
            'id_jenis_muatan',
            'nomor_kendaraan',
            //'jenis_kendaraan',
            //'berat_kendaraan',
            //'jbi',
            //'hasil_penimbangan',
            //'berat_muatan',
            //'kelebihan_muatan',
            //'asal',
            //'tujuan',
            //'tanggal',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
