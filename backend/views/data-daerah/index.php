<?php

use fedemotta\datatables\DataTables;
use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Data Daerahs';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="data-daerah-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Data Daerah', ['create'], ['class' => 'btn btn-success']) ?>
    </p>


    <?= DataTables::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id_daerah',
            'kode_daerah',
            'nama_daerah',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
