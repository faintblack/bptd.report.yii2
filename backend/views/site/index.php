<?php

/* @var $this yii\web\View */

use fedemotta\datatables\DataTables;
use yii\grid\GridView;

$this->title = 'My Yii Application';
?>
<!-- <div class="site-index">

    <div class="jumbotron">
        <h1>Congratulations!</h1>

        <p class="lead">You have successfully created your Yii-powered application.</p>

        <p><a class="btn btn-lg btn-success" href="http://www.yiiframework.com">Get started with Yii</a></p>
    </div>

    <div class="body-content">

        <div class="row">
            <div class="col-lg-12">
                <?= DataTables::widget([
                    'dataProvider' => $units,
                    'columns' => [
                        ['class' => 'yii\grid\SerialColumn'],

                        'id_unit',
                        'username',
                        'nama_unit',
                        'unit',
                        'kabupaten',
                        //'email:email',
                        //'alamat',

                        ['class' => 'yii\grid\ActionColumn'],
                    ],
                ]); ?>
            </div>
            <div class="col-lg-4">
                <h2>Heading</h2>

                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                    fugiat nulla pariatur.</p>

                <p><a class="btn btn-default" href="http://www.yiiframework.com/doc/">Yii Documentation &raquo;</a></p>
            </div>
            <div class="col-lg-4">
                <h2>Heading</h2>

                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                    fugiat nulla pariatur.</p>

                <p><a class="btn btn-default" href="http://www.yiiframework.com/forum/">Yii Forum &raquo;</a></p>
            </div>
            <div class="col-lg-4">
                <h2>Heading</h2>

                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                    fugiat nulla pariatur.</p>

                <p><a class="btn btn-default" href="http://www.yiiframework.com/extensions/">Yii Extensions &raquo;</a></p>
            </div>
        </div>

    </div>
</div> -->

<!-- Page-Title -->
<div class="row">
    <div class="col-sm-12">

        <h4 class="page-title" style="margin-top: 0px;">Beranda</h4>
        <ol class="breadcrumb" style="font-size: 12px;">
            <li class="active">
                Beranda
            </li>
        </ol>
    </div>
</div>

<!-- WIDGET -->
<div class="row">
    <div class="col-lg-3 col-sm-6">
        <div class="widget-panel widget-style-2 bg-white">
            <i class="md-directions-bus text-primary"></i>
            <h2 class="m-0 text-dark counter font-600"><?= 10; ?></h2>
            <div class="text-muted m-t-5">Unit Terminal</div>
        </div>
    </div>
    <div class="col-lg-3 col-sm-6">
        <div class="widget-panel widget-style-2 bg-white">
            <i class="fa fa-balance-scale text-pink"></i>
            <h2 class="m-0 text-dark counter font-600"><?= 10; ?></h2>
            <div class="text-muted m-t-5">Unit UPPKB</div>
        </div>
    </div>
    <div class="col-lg-3 col-sm-6">
        <div class="widget-panel widget-style-2 bg-white">
            <i class="md-directions-ferry text-info"></i>
            <h2 class="m-0 text-dark counter font-600"><?= 10; ?></h2>
            <div class="text-muted m-t-5">Unit SDP</div>
        </div>
    </div>
    <div class="col-lg-3 col-sm-6">
        <div class="widget-panel widget-style-2 bg-white">
            <i class="md-account-balance text-custom"></i>
            <h2 class="m-0 text-dark counter font-600"><?= 10; ?></h2>
            <div class="text-muted m-t-5">Total Unit</div>
        </div>
    </div>
</div>

<!-- DATA STATISTIK TERMINAL -->
<div class="row">
    <div class="col-lg-12">
        <div class="card-box">
            <h4 class="text-dark header-title m-t-0">Data Keberangkatan Kendaraan Terminal Tahun 2018</h4>

            <div class="row">
                <div class="col-md-9">
                    <div class="text-center">
                        <ul class="list-inline chart-detail-list">
                            <li>
                                <h5><i class="fa fa-circle m-r-5" style="color: #36404a;"></i>Terminal Bangkinang</h5>
                            </li>
                            <li>
                                <h5><i class="fa fa-circle m-r-5" style="color: #5d9cec;"></i>Terminal BRPS</h5>
                            </li>
                        </ul>
                    </div>

                    <!-- STATISTIK TERMINAL -->
                    <div id="morris-area-with-dotted" style="height: 300px; color:black;"></div>

                </div>
            </div>
            <!-- end row -->

        </div>

    </div>
</div>