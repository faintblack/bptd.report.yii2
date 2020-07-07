<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\DataDaerah */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="data-daerah-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'kode_daerah')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'nama_daerah')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
