<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\TermDetailReport */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="term-detail-report-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'id_unit')->textInput() ?>

    <?= $form->field($model, 'id_kendaraan')->textInput() ?>

    <?= $form->field($model, 'id_penumpang')->textInput() ?>

    <?= $form->field($model, 'jenis_tujuan')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'tipe_perjalanan')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'tanggal')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
