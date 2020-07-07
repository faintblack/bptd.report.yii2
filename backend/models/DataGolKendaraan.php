<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "data_gol_kendaraan".
 *
 * @property int $id_gol_kendaraan
 * @property string $kode_golongan
 * @property string $nama_golongan
 */
class DataGolKendaraan extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'data_gol_kendaraan';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['kode_golongan', 'nama_golongan'], 'required'],
            [['kode_golongan'], 'string', 'max' => 4],
            [['nama_golongan'], 'string', 'max' => 80],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_gol_kendaraan' => 'Id Gol Kendaraan',
            'kode_golongan' => 'Kode Golongan',
            'nama_golongan' => 'Nama Golongan',
        ];
    }
}
