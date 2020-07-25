<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\UppkbReport */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="uppkb-report-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'id_unit')->textInput() ?>

    <?= $form->field($model, 'no_ktp')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'tanggal')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
