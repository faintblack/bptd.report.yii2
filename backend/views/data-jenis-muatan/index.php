<?php

use fedemotta\datatables\DataTables;
use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Data Jenis Muatan';
$this->params['breadcrumbs'][] = 'Data Master';
$this->params['breadcrumbs'][] = $this->title;
// print_r($this->params['breadcrumbs']);exit();
?>
<div class="row">
    <div class="col-sm-12">

        <h4 class="page-title" style="margin-top: 0px;"><?= $this->title; ?></h4>
        <ol class="breadcrumb" style="font-size: 12px; margin-bottom:10px">
        <?php 
        foreach ($this->params['breadcrumbs'] as $key => $value) {
        ?>
        <li>
                <?= $value; ?>
            </li>
        <?php
        }
        ?>
            
        </ol>
    </div>
</div>
<div class="row">
    <div class="col-lg-12">
        <div class="card-box">
            <h4 class="text-dark header-title m-t-0"><?= $this->title; ?></h4>
            <p>
                <?= Html::a('Create '.$this->title, ['create'], ['class' => 'btn btn-success']) ?>
            </p>
            <?= DataTables::widget([
                'dataProvider' => $dataProvider,
                'columns' => [
                    [
                        'header' => 'No.',
                        'headerOptions' => ['style' => 'text-align:center;'],
                        'contentOptions' => ['style' => 'text-align:center;'],
                        'class' => 'yii\grid\SerialColumn'
                    ],
                    // 'id_jenis_muatan',
                    [
                        'attribute' => 'Kode Jenis Muatan',
                        'headerOptions' => ['style' => 'text-align:center;'],
                        'contentOptions' => ['style' => 'text-align:center;'],
                        'value' => 'kode_jenis_muatan'
                    ],
                    [
                        'attribute' => 'Nama Jenis Muatan',
                        'headerOptions' => ['style' => 'text-align:center;'],
                        'contentOptions' => ['style' => 'text-align:center;'],
                        'value' => 'nama_jenis_muatan'
                    ],
                    [
                        'header' => 'Aksi',
                        'headerOptions' => ['style' => 'text-align:center;'],
                        'contentOptions' => ['style' => 'text-align:center;'],
                        'class' => 'yii\grid\ActionColumn'
                    ],
                ],
            ]); ?>

        </div>

    </div>
</div>