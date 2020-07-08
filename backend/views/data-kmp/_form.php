<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\DataKmp */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="data-kmp-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'id_unit')->textInput() ?>

    <?= $form->field($model, 'id_trayek')->textInput() ?>

    <?= $form->field($model, 'nama_kmp')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'GRT')->textInput() ?>

    <?= $form->field($model, 'kapasitas_penumpang')->textInput() ?>

    <?= $form->field($model, 'kapasitas_kendaraan')->textInput() ?>

    <?= $form->field($model, 'keterangan')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
