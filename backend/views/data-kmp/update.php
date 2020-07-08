<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\DataKmp */

$this->title = 'Update Data Kmp: ' . $model->id_kmp;
$this->params['breadcrumbs'][] = ['label' => 'Data Kmps', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_kmp, 'url' => ['view', 'id' => $model->id_kmp]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="data-kmp-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
