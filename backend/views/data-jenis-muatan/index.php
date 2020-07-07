<?php

use fedemotta\datatables\DataTables;
use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Data Jenis Muatans';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="data-jenis-muatan-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Data Jenis Muatan', ['create'], ['class' => 'btn btn-success']) ?>
    </p>


    <?= DataTables::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id_jenis_muatan',
            'kode_jenis_muatan',
            'nama_jenis_muatan',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
