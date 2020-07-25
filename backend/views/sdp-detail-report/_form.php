<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\SdpDetailReport */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="sdp-detail-report-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'id_report')->textInput() ?>

    <?= $form->field($model, 'id_kmp')->textInput() ?>

    <?= $form->field($model, 'id_muatan_penumpang')->textInput() ?>

    <?= $form->field($model, 'frekuensi_trip')->textInput() ?>

    <?= $form->field($model, 'load_factor_kendaraan')->textInput() ?>

    <?= $form->field($model, 'load_factor_penumpang')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
