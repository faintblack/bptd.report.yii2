<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\DataJenisMuatan */

$this->title = 'Update Data Jenis Muatan: ' . $model->id_jenis_muatan;
$this->params['breadcrumbs'][] = ['label' => 'Data Jenis Muatans', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_jenis_muatan, 'url' => ['view', 'id' => $model->id_jenis_muatan]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="data-jenis-muatan-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
