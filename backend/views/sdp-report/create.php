<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\SdpReport */

$this->title = 'Create Sdp Report';
$this->params['breadcrumbs'][] = ['label' => 'Sdp Reports', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="sdp-report-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
