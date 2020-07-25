<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\SdpReport */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="sdp-report-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'id_unit')->textInput() ?>

    <?= $form->field($model, 'tanggal')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
