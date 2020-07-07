<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\DataTrayek */

$this->title = 'Create Data Trayek';
$this->params['breadcrumbs'][] = ['label' => 'Data Trayeks', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="data-trayek-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
