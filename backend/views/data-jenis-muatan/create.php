<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\DataJenisMuatan */

$this->title = 'Create Data Jenis Muatan';
$this->params['breadcrumbs'][] = ['label' => 'Data Jenis Muatans', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="data-jenis-muatan-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
