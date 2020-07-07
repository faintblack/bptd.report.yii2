<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\DataTrayek */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="data-trayek-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'nama_trayek')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
