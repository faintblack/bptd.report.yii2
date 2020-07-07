<?php

use yii\helpers\Html;
use yii\helpers\Url;

?>
<div class="topbar">

    <!-- LOGO -->
    <div class="topbar-left">
        <div class="text-center">
            <a href="index.html" class="logo"><i class="icon-magnet icon-c-logo"></i><span><?= Yii::$app->name; ?></span></a>
        </div>
    </div>

    <!-- Button mobile view to collapse sidebar menu -->
    <div class="navbar navbar-default" role="navigation">
        <div class="container">
            <div class="">
                <div class="pull-left">
                    <button class="button-menu-mobile open-left waves-effect waves-light">
                        <i class="md md-menu"></i>
                    </button>
                    <span class="clearfix"></span>
                </div>

                <ul class="nav navbar-nav navbar-right pull-right">
                    <li class="hidden-xs">
                        <a href="#" id="btn-fullscreen" class="waves-effect waves-light" title="Fullscreen"><i class="icon-size-fullscreen"></i></a>
                    </li>
                    <li class="hidden-xs">
                        <a href="<?= Url::to(['site/logout']) ?>" id="btn-logout" class="waves-effect waves-light" title="Logout"><i class="ti-light-bulb"></i></a>
                    </li>
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </div>
</div>