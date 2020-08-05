<?php

/* @var $this \yii\web\View */
/* @var $content string */

use backend\assets\AppAsset;
use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use common\widgets\Alert;
use yii\helpers\BaseUrl;
use yii\helpers\Url;

AppAsset::register($this);
?> 
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
    <meta name="author" content="Coderthemes">

    <link rel="shortcut icon" href="<?= Url::base() ?>/ubold/assets/images/favicon_1.ico">

    <title>Balai Pengelola Transportasi Darat Wil. IV Riau - Kepri</title>

    <style>
        h1{
            margin-top: 0px !important;
        }
    </style>
    <?= Html::csrfMetaTags() ?>

    <?php $this->head() ?>
</head>
<?php $this->beginBody() ?>

<body class="fixed-left">

    <?php
    // Jika user belum login
    if (Yii::$app->user->isGuest) {
        echo $content;
    } else { // Jika user telah login
    ?>
        <!-- Begin page -->
        <div id="wrapper">

            <!-- Top Bar Start -->
            <?= $this->render('topbar.php'); ?>
            <!-- Top Bar End -->

            <!-- ========== Left Sidebar Start ========== -->
            <div class="left side-menu">
                <div class="sidebar-inner slimscrollleft">
                    <!-- Sidebar -->
                    <?= $this->render('sidebar.php'); ?>
                </div>
            </div>
            <!-- Left Sidebar End -->

            <!-- Start right Content here -->
            <div class="content-page">
                <div class="content">
                    <div class="container">
                        <?= $content; ?>
                    </div>
                </div>

                <footer class="footer">
                    © 2020. All rights reserved.
                </footer>

            </div>

        </div>
        <!-- END wrapper -->
    <?php
    }
    ?>


    <script>
        var resizefunc = [];
    </script>

</body>
<?php $this->endBody() ?>

</html>
<?php $this->endPage() ?>