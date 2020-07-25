<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\TermReport */

$this->title = 'Create Term Report';
$this->params['breadcrumbs'][] = ['label' => 'Term Reports', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="term-report-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
