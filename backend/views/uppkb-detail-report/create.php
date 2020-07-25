<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\UppkbDetailReport */

$this->title = 'Create Uppkb Detail Report';
$this->params['breadcrumbs'][] = ['label' => 'Uppkb Detail Reports', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="uppkb-detail-report-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
