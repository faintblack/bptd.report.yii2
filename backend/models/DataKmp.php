<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "data_kmp".
 *
 * @property int $id_kmp
 * @property int $id_unit
 * @property int $id_trayek
 * @property string $nama_kmp
 * @property int $GRT
 * @property int $kapasitas_penumpang
 * @property int $kapasitas_kendaraan
 * @property string $keterangan
 *
 * @property DataTrayek $trayek
 * @property Unit $unit
 * @property SdpDetailReport[] $sdpDetailReports
 */
class DataKmp extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'data_kmp';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_unit', 'id_trayek', 'nama_kmp', 'GRT', 'kapasitas_penumpang', 'kapasitas_kendaraan', 'keterangan'], 'required'],
            [['id_unit', 'id_trayek', 'GRT', 'kapasitas_penumpang', 'kapasitas_kendaraan'], 'integer'],
            [['nama_kmp'], 'string', 'max' => 80],
            [['keterangan'], 'string', 'max' => 250],
            [['id_trayek'], 'exist', 'skipOnError' => true, 'targetClass' => DataTrayek::className(), 'targetAttribute' => ['id_trayek' => 'id_trayek']],
            [['id_unit'], 'exist', 'skipOnError' => true, 'targetClass' => Unit::className(), 'targetAttribute' => ['id_unit' => 'id_unit']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_kmp' => 'Id Kmp',
            'id_unit' => 'Id Unit',
            'id_trayek' => 'Id Trayek',
            'nama_kmp' => 'Nama Kmp',
            'GRT' => 'Grt',
            'kapasitas_penumpang' => 'Kapasitas Penumpang',
            'kapasitas_kendaraan' => 'Kapasitas Kendaraan',
            'keterangan' => 'Keterangan',
        ];
    }

    /**
     * Gets query for [[Trayek]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getTrayek()
    {
        return $this->hasOne(DataTrayek::className(), ['id_trayek' => 'id_trayek']);
    }

    /**
     * Gets query for [[Unit]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getUnit()
    {
        return $this->hasOne(Unit::className(), ['id_unit' => 'id_unit']);
    }

    /**
     * Gets query for [[SdpDetailReports]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getSdpDetailReports()
    {
        return $this->hasMany(SdpDetailReport::className(), ['id_kmp' => 'id_kmp']);
    }
}
