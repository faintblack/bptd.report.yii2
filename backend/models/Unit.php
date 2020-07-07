<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "unit".
 *
 * @property int $id_unit
 * @property string $username
 * @property string $nama_unit
 * @property string $unit
 * @property string $kabupaten
 * @property string $email
 * @property string $alamat
 *
 * @property DataKmp[] $dataKmps
 * @property SdpReport[] $sdpReports
 * @property TermReport[] $termReports
 * @property Pengguna $username0
 * @property UppkbReport[] $uppkbReports
 */
class Unit extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'unit';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['username', 'nama_unit', 'unit', 'kabupaten', 'email', 'alamat'], 'required'],
            [['username'], 'string', 'max' => 12],
            [['nama_unit'], 'string', 'max' => 180],
            [['unit'], 'string', 'max' => 10],
            [['kabupaten', 'email'], 'string', 'max' => 80],
            [['alamat'], 'string', 'max' => 250],
            [['username'], 'exist', 'skipOnError' => true, 'targetClass' => Pengguna::className(), 'targetAttribute' => ['username' => 'username']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_unit' => 'Id Unit',
            'username' => 'Username',
            'nama_unit' => 'Nama Unit',
            'unit' => 'Unit',
            'kabupaten' => 'Kabupaten',
            'email' => 'Email',
            'alamat' => 'Alamat',
        ];
    }

    /**
     * Gets query for [[DataKmps]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getDataKmps()
    {
        return $this->hasMany(DataKmp::className(), ['id_unit' => 'id_unit']);
    }

    /**
     * Gets query for [[SdpReports]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getSdpReports()
    {
        return $this->hasMany(SdpReport::className(), ['id_unit' => 'id_unit']);
    }

    /**
     * Gets query for [[TermReports]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getTermReports()
    {
        return $this->hasMany(TermReport::className(), ['id_unit' => 'id_unit']);
    }

    /**
     * Gets query for [[Username0]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getUsername0()
    {
        return $this->hasOne(Pengguna::className(), ['username' => 'username']);
    }

    /**
     * Gets query for [[UppkbReports]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getUppkbReports()
    {
        return $this->hasMany(UppkbReport::className(), ['id_unit' => 'id_unit']);
    }
}
