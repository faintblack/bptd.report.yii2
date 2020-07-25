<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\UppkbReport */

$this->title = 'Update Uppkb Report: ' . $model->id_report;
$this->params['breadcrumbs'][] = ['label' => 'Uppkb Reports', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_report, 'url' => ['view', 'id' => $model->id_report]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="uppkb-report-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
