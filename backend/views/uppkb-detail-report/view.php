<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\UppkbDetailReport */

$this->title = $model->id_detail_report;
$this->params['breadcrumbs'][] = ['label' => 'Uppkb Detail Reports', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="uppkb-detail-report-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id_detail_report], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id_detail_report], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id_detail_report',
            'id_unit',
            'no_ktp_supir',
            'id_jenis_muatan',
            'nomor_kendaraan',
            'jenis_kendaraan',
            'berat_kendaraan',
            'jbi',
            'hasil_penimbangan',
            'berat_muatan',
            'kelebihan_muatan',
            'asal',
            'tujuan',
            'tanggal',
        ],
    ]) ?>

</div>
