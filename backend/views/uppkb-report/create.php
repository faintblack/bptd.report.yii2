<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\UppkbReport */

$this->title = 'Create Uppkb Report';
$this->params['breadcrumbs'][] = ['label' => 'Uppkb Reports', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="uppkb-report-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
