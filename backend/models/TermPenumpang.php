<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "term_penumpang".
 *
 * @property int $id_penumpang
 * @property int $penumpang_datang
 * @property int $penumpang_turun
 * @property int $penumpang_naik
 * @property int $penumpang_berangkat
 *
 * @property TermDetailReport[] $termDetailReports
 */
class TermPenumpang extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'term_penumpang';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['penumpang_datang', 'penumpang_turun', 'penumpang_naik', 'penumpang_berangkat'], 'required'],
            [['penumpang_datang', 'penumpang_turun', 'penumpang_naik', 'penumpang_berangkat'], 'integer'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_penumpang' => 'Id Penumpang',
            'penumpang_datang' => 'Jumlah Penumpang Datang',
            'penumpang_turun' => 'Jumlah Penumpang Turun',
            'penumpang_naik' => 'Jumlah Penumpang Naik',
            'penumpang_berangkat' => 'Jumlah Penumpang Berangkat',
        ];
    }

    /**
     * Gets query for [[TermDetailReports]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getTermDetailReports()
    {
        return $this->hasMany(TermDetailReport::className(), ['id_penumpang' => 'id_penumpang']);
    }
}
