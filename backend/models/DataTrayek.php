<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "data_trayek".
 *
 * @property int $id_trayek
 * @property string $nama_trayek
 *
 * @property DataKmp[] $dataKmps
 */
class DataTrayek extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'data_trayek';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nama_trayek'], 'required'],
            [['nama_trayek'], 'string', 'max' => 180],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_trayek' => 'Id Trayek',
            'nama_trayek' => 'Nama Trayek',
        ];
    }

    /**
     * Gets query for [[DataKmps]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getDataKmps()
    {
        return $this->hasMany(DataKmp::className(), ['id_trayek' => 'id_trayek']);
    }
}
