<?php

use yii\bootstrap\ActiveForm;
use yii\helpers\Html;

?>
<div class="account-pages"></div>
<div class="clearfix"></div>
<div class="wrapper-page">
    <div class=" card-box">
        <div class="panel-heading">
            <h3 class="text-center"> Sign In to <strong class="text-custom">BPTD IV</strong> Report </h3>
        </div>


        <div class="panel-body">
            <?php $form = ActiveForm::begin(['id' => 'login-form']); ?>

                <?= $form->field($model, 'username')->textInput(['autofocus' => true]) ?>

                <?= $form->field($model, 'password')->passwordInput() ?>

                <?= $form->field($model, 'rememberMe')->checkbox() ?>

                <div class="form-group">
                    <?= Html::submitButton('Login', ['class' => 'btn btn-primary btn-block text-uppercase waves-effect waves-light', 'name' => 'login-button']) ?>
                </div>

            <?php ActiveForm::end(); ?>

        </div>
    </div>
    <div class="row">
        <div class="col-sm-12 text-center">
            <!-- <p>Don't have an account? <a href="page-register.html" class="text-primary m-l-5"><b>Sign Up</b></a></p> -->

        </div>
    </div>

</div>