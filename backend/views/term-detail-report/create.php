<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\TermDetailReport */

$this->title = 'Create Term Detail Report';
$this->params['breadcrumbs'][] = ['label' => 'Term Detail Reports', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="term-detail-report-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
