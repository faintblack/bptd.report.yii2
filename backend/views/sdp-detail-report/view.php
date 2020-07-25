<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\SdpDetailReport */

$this->title = $model->id_detail_report;
$this->params['breadcrumbs'][] = ['label' => 'Sdp Detail Reports', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="sdp-detail-report-view">

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
            'id_report',
            'id_kmp',
            'id_muatan_penumpang',
            'frekuensi_trip',
            'load_factor_kendaraan',
            'load_factor_penumpang',
        ],
    ]) ?>

</div>
