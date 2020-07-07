<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\DataDaerah */

$this->title = 'Create Data Daerah';
$this->params['breadcrumbs'][] = ['label' => 'Data Daerahs', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="data-daerah-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
