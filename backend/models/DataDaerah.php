<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "data_daerah".
 *
 * @property int $id_daerah
 * @property string $kode_daerah
 * @property string $nama_daerah
 *
 * @property UppkbDetailReport[] $uppkbDetailReports
 * @property UppkbDetailReport[] $uppkbDetailReports0
 */
class DataDaerah extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'data_daerah';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['kode_daerah', 'nama_daerah'], 'required'],
            [['kode_daerah'], 'string', 'max' => 4],
            [['nama_daerah'], 'string', 'max' => 80],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_daerah' => 'Id Daerah',
            'kode_daerah' => 'Kode Daerah',
            'nama_daerah' => 'Nama Daerah',
        ];
    }

    /**
     * Gets query for [[UppkbDetailReports]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getUppkbDetailReports()
    {
        return $this->hasMany(UppkbDetailReport::className(), ['asal' => 'id_daerah']);
    }

    /**
     * Gets query for [[UppkbDetailReports0]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getUppkbDetailReports0()
    {
        return $this->hasMany(UppkbDetailReport::className(), ['tujuan' => 'id_daerah']);
    }
}
