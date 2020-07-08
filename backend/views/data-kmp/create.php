<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\DataKmp */

$this->title = 'Create Data Kmp';
$this->params['breadcrumbs'][] = ['label' => 'Data Kmps', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="data-kmp-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
