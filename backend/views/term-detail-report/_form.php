<?php

use kartik\date\DatePicker;
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\TermDetailReport */
/* @var $form yii\widgets\ActiveForm */


?>

<div class="term-detail-report-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'id_unit')->dropDownList($data['data_unit'], [
        'prompt' => 'Pilih Unit Terminal'
    ]) ?>

    <?= $form->field($model2, 'kendaraan_masuk')->textInput(['type' => 'number']) ?>

    <?= $form->field($model2, 'kendaraan_keluar')->textInput(['type' => 'number']) ?>

    <?= $form->field($model3, 'penumpang_datang')->textInput(['type' => 'number']) ?>

    <?= $form->field($model3, 'penumpang_turun')->textInput(['type' => 'number']) ?>

    <?= $form->field($model3, 'penumpang_naik')->textInput(['type' => 'number']) ?>

    <?= $form->field($model3, 'penumpang_berangkat')->textInput(['type' => 'number']) ?>

    <?= $form->field($model, 'jenis_tujuan')->dropDownList(
        ['AKAP' => 'AKAP', 'AKDP' => 'AKDP'],
        ['prompt' => 'Pilih Jenis Tujuan']
    ) ?>

    <?= $form->field($model, 'tipe_perjalanan')->dropDownList(
        ['Reguler' => 'Reguler', 'Transit' => 'Transit'],
        ['prompt' => 'Pilih Tipe Perjalanan']
    ) ?>

    <?= $form->field($model, 'tanggal')->widget(DatePicker::class, [
        'pluginOptions' => [
            'autoclose' => true,
            'format' => 'yyyy-m-dd',
            'todayHighlight' => true,
            'startDate' => date("yyyy-m-dd H:i:s"),
        ],
        'options' => [
            'autocomplete' => 'off'
        ]
    ]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>