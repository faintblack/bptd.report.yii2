<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "uppkb_detail_report".
 *
 * @property int $id_detail_report
 * @property int $id_report
 * @property int $id_jenis_muatan
 * @property string $nomor_kendaraan
 * @property string $jenis_kendaraan
 * @property int $berat_kendaraan
 * @property int $jbi
 * @property int $hasil_penimbangan
 * @property int $berat_muatan
 * @property int $kelebihan_muatan
 * @property int $asal
 * @property int $tujuan
 *
 * @property UppkbReport $report
 * @property DataJenisMuatan $jenisMuatan
 * @property DataDaerah $asal0
 * @property DataDaerah $tujuan0
 */
class UppkbDetailReport extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'uppkb_detail_report';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_report', 'id_jenis_muatan', 'nomor_kendaraan', 'jenis_kendaraan', 'berat_kendaraan', 'jbi', 'hasil_penimbangan', 'berat_muatan', 'kelebihan_muatan', 'asal', 'tujuan'], 'required'],
            [['id_report', 'id_jenis_muatan', 'berat_kendaraan', 'jbi', 'hasil_penimbangan', 'berat_muatan', 'kelebihan_muatan', 'asal', 'tujuan'], 'integer'],
            [['nomor_kendaraan'], 'string', 'max' => 10],
            [['jenis_kendaraan'], 'string', 'max' => 4],
            [['id_report'], 'exist', 'skipOnError' => true, 'targetClass' => UppkbReport::className(), 'targetAttribute' => ['id_report' => 'id_report']],
            [['id_jenis_muatan'], 'exist', 'skipOnError' => true, 'targetClass' => DataJenisMuatan::className(), 'targetAttribute' => ['id_jenis_muatan' => 'id_jenis_muatan']],
            [['asal'], 'exist', 'skipOnError' => true, 'targetClass' => DataDaerah::className(), 'targetAttribute' => ['asal' => 'id_daerah']],
            [['tujuan'], 'exist', 'skipOnError' => true, 'targetClass' => DataDaerah::className(), 'targetAttribute' => ['tujuan' => 'id_daerah']],
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
            'id_jenis_muatan' => 'Id Jenis Muatan',
            'nomor_kendaraan' => 'Nomor Kendaraan',
            'jenis_kendaraan' => 'Jenis Kendaraan',
            'berat_kendaraan' => 'Berat Kendaraan',
            'jbi' => 'Jbi',
            'hasil_penimbangan' => 'Hasil Penimbangan',
            'berat_muatan' => 'Berat Muatan',
            'kelebihan_muatan' => 'Kelebihan Muatan',
            'asal' => 'Asal',
            'tujuan' => 'Tujuan',
        ];
    }

    /**
     * Gets query for [[Report]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getReport()
    {
        return $this->hasOne(UppkbReport::className(), ['id_report' => 'id_report']);
    }

    /**
     * Gets query for [[JenisMuatan]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getJenisMuatan()
    {
        return $this->hasOne(DataJenisMuatan::className(), ['id_jenis_muatan' => 'id_jenis_muatan']);
    }

    /**
     * Gets query for [[Asal0]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getAsal0()
    {
        return $this->hasOne(DataDaerah::className(), ['id_daerah' => 'asal']);
    }

    /**
     * Gets query for [[Tujuan0]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getTujuan0()
    {
        return $this->hasOne(DataDaerah::className(), ['id_daerah' => 'tujuan']);
    }
}
