<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "term_kendaraan".
 *
 * @property int $id_kendaraan
 * @property int $kendaraan_masuk
 * @property int $kendaraan_keluar
 *
 * @property TermDetailReport[] $termDetailReports
 */
class TermKendaraan extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'term_kendaraan';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['kendaraan_masuk', 'kendaraan_keluar'], 'required'],
            [['kendaraan_masuk', 'kendaraan_keluar'], 'integer'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_kendaraan' => 'Id Kendaraan',
            'kendaraan_masuk' => 'Jumlah Kendaraan Masuk',
            'kendaraan_keluar' => 'Jumlah Kendaraan Keluar',
        ];
    }

    /**
     * Gets query for [[TermDetailReports]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getTermDetailReports()
    {
        return $this->hasMany(TermDetailReport::className(), ['id_kendaraan' => 'id_kendaraan']);
    }
}
