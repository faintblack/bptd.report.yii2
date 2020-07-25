<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\TermReport */

$this->title = 'Update Term Report: ' . $model->id_report;
$this->params['breadcrumbs'][] = ['label' => 'Term Reports', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_report, 'url' => ['view', 'id' => $model->id_report]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="term-report-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
