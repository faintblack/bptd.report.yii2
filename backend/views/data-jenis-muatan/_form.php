<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\DataJenisMuatan */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="data-jenis-muatan-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'kode_jenis_muatan')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'nama_jenis_muatan')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
