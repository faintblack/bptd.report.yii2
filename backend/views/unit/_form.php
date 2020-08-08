<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\Unit */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="unit-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model2, 'nama')->textInput(['maxlength' => true])->label('Nama Pengguna') ?>

    <?= $form->field($model2, 'username')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model2, 'password')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'nama_unit')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'unit')->dropDownList(
        ['Terminal' => 'Terminal', 'SDP' => 'SDP', 'UPPKB' => 'UPPKB'],
        ['prompt' => 'Pilih Jenis Unit']
    ) ?>

    <?= $form->field($model, 'kabupaten')->dropDownList(
        [
            'Pekanbaru' => 'Pekanbaru', 
            'Dumai' => 'Dumai', 
            'Bengkalis' => 'Bengkalis',
            'Kampar' => 'Kampar',
            'Taluk Kuantan' => 'Taluk Kuantan',
            'Indragiri Hulu' => 'Indragiri Hulu',
            'Indragiri Hilir' => 'Indragiri Hilir',
            'Rokan Hulu' => 'Rokan Hulu',
            'Rokan Hilir' => 'Rokan Hilir',
            'Duri' => 'Duri',
            'Kepulauan Meranti' => 'Kepulauan Meranti',
            'Batam' => 'Batam',
        ],
        ['prompt' => 'Pilih Kabupaten / Kota']
    )->label('Kabupaten / Kota') ?>

    <?= $form->field($model, 'email')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'alamat')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
