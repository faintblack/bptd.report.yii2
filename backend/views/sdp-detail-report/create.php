<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\SdpDetailReport */

$this->title = 'Create Sdp Detail Report';
$this->params['breadcrumbs'][] = ['label' => 'Sdp Detail Reports', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="sdp-detail-report-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
