<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\DataDaerah */

$this->title = 'Update Data Daerah: ' . $model->id_daerah;
$this->params['breadcrumbs'][] = ['label' => 'Data Daerahs', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_daerah, 'url' => ['view', 'id' => $model->id_daerah]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="data-daerah-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
