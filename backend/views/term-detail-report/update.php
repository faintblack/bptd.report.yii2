<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\TermDetailReport */

$this->title = 'Update Term Detail Report: ' . $model->id_detail_report;
$this->params['breadcrumbs'][] = ['label' => 'Term Detail Reports', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_detail_report, 'url' => ['view', 'id' => $model->id_detail_report]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="term-detail-report-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
