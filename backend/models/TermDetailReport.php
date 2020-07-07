<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "term_detail_report".
 *
 * @property int $id_detail_report
 * @property int $id_report
 * @property int $id_kendaraan
 * @property int $id_penumpang
 * @property string $jenis_tujuan
 * @property string $tipe_perjalanan
 *
 * @property TermReport $report
 * @property TermKendaraan $kendaraan
 * @property TermPenumpang $penumpang
 */
class TermDetailReport extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'term_detail_report';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_report', 'id_kendaraan', 'id_penumpang', 'jenis_tujuan', 'tipe_perjalanan'], 'required'],
            [['id_report', 'id_kendaraan', 'id_penumpang'], 'integer'],
            [['jenis_tujuan'], 'string', 'max' => 4],
            [['tipe_perjalanan'], 'string', 'max' => 10],
            [['id_report'], 'exist', 'skipOnError' => true, 'targetClass' => TermReport::className(), 'targetAttribute' => ['id_report' => 'id_report']],
            [['id_kendaraan'], 'exist', 'skipOnError' => true, 'targetClass' => TermKendaraan::className(), 'targetAttribute' => ['id_kendaraan' => 'id_kendaraan']],
            [['id_penumpang'], 'exist', 'skipOnError' => true, 'targetClass' => TermPenumpang::className(), 'targetAttribute' => ['id_penumpang' => 'id_penumpang']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_detail_report' => 'Id Detail Report',
            'id_report' => 'Id Report',
            'id_kendaraan' => 'Id Kendaraan',
            'id_penumpang' => 'Id Penumpang',
            'jenis_tujuan' => 'Jenis Tujuan',
            'tipe_perjalanan' => 'Tipe Perjalanan',
        ];
    }

    /**
     * Gets query for [[Report]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getReport()
    {
        return $this->hasOne(TermReport::className(), ['id_report' => 'id_report']);
    }

    /**
     * Gets query for [[Kendaraan]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getKendaraan()
    {
        return $this->hasOne(TermKendaraan::className(), ['id_kendaraan' => 'id_kendaraan']);
    }

    /**
     * Gets query for [[Penumpang]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getPenumpang()
    {
        return $this->hasOne(TermPenumpang::className(), ['id_penumpang' => 'id_penumpang']);
    }
}
