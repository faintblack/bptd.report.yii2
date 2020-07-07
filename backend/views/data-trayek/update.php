<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\DataTrayek */

$this->title = 'Update Data Trayek: ' . $model->id_trayek;
$this->params['breadcrumbs'][] = ['label' => 'Data Trayeks', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id_trayek, 'url' => ['view', 'id' => $model->id_trayek]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="data-trayek-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
