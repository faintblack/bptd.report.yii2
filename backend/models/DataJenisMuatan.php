<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "data_jenis_muatan".
 *
 * @property int $id_jenis_muatan
 * @property string $kode_jenis_muatan
 * @property string $nama_jenis_muatan
 *
 * @property UppkbDetailReport[] $uppkbDetailReports
 */
class DataJenisMuatan extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'data_jenis_muatan';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['kode_jenis_muatan', 'nama_jenis_muatan'], 'required'],
            [['kode_jenis_muatan'], 'string', 'max' => 4],
            [['nama_jenis_muatan'], 'string', 'max' => 80],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_jenis_muatan' => 'Id Jenis Muatan',
            'kode_jenis_muatan' => 'Kode Jenis Muatan',
            'nama_jenis_muatan' => 'Nama Jenis Muatan',
        ];
    }

    /**
     * Gets query for [[UppkbDetailReports]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getUppkbDetailReports()
    {
        return $this->hasMany(UppkbDetailReport::className(), ['id_jenis_muatan' => 'id_jenis_muatan']);
    }
}
