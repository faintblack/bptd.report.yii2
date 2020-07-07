<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "uppkb_pengemudi".
 *
 * @property string $no_ktp
 * @property string $nama_pengemudi
 * @property string $nama_perusahaan
 * @property string $no_hp
 *
 * @property UppkbReport[] $uppkbReports
 */
class UppkbPengemudi extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'uppkb_pengemudi';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['no_ktp', 'nama_pengemudi', 'nama_perusahaan', 'no_hp'], 'required'],
            [['no_ktp'], 'string', 'max' => 16],
            [['nama_pengemudi'], 'string', 'max' => 80],
            [['nama_perusahaan'], 'string', 'max' => 250],
            [['no_hp'], 'string', 'max' => 13],
            [['no_ktp'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'no_ktp' => 'No Ktp',
            'nama_pengemudi' => 'Nama Pengemudi',
            'nama_perusahaan' => 'Nama Perusahaan',
            'no_hp' => 'No Hp',
        ];
    }

    /**
     * Gets query for [[UppkbReports]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getUppkbReports()
    {
        return $this->hasMany(UppkbReport::className(), ['no_ktp' => 'no_ktp']);
    }
}
