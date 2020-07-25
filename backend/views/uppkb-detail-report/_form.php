<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\UppkbDetailReport */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="uppkb-detail-report-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'id_unit')->textInput() ?>

    <?= $form->field($model, 'no_ktp_supir')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'id_jenis_muatan')->textInput() ?>

    <?= $form->field($model, 'nomor_kendaraan')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'jenis_kendaraan')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'berat_kendaraan')->textInput() ?>

    <?= $form->field($model, 'jbi')->textInput() ?>

    <?= $form->field($model, 'hasil_penimbangan')->textInput() ?>

    <?= $form->field($model, 'berat_muatan')->textInput() ?>

    <?= $form->field($model, 'kelebihan_muatan')->textInput() ?>

    <?= $form->field($model, 'asal')->textInput() ?>

    <?= $form->field($model, 'tujuan')->textInput() ?>

    <?= $form->field($model, 'tanggal')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
