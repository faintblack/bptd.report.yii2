<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\UppkbDetailReport */

$this->title = 'Update Uppkb Detail Report: ' . $model->id_detail_report;
$this->params['breadcrumbs'][] = ['label' => 'Uppkb Detail Reports', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_detail_report, 'url' => ['view', 'id' => $model->id_detail_report]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="uppkb-detail-report-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
