<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "sdp_detail_report".
 *
 * @property int $id_detail_report
 * @property int $id_report
 * @property int $id_kmp
 * @property int $id_muatan_penumpang
 * @property int $frekuensi_trip
 * @property float $load_factor_kendaraan
 * @property float $load_factor_penumpang
 *
 * @property SdpReport $report
 * @property DataKmp $kmp
 * @property SdpMuatanPenumpang $muatanPenumpang
 * @property SdpMuatanKendaraan[] $sdpMuatanKendaraans
 */
class SdpDetailReport extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'sdp_detail_report';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_report', 'id_kmp', 'id_muatan_penumpang', 'frekuensi_trip', 'load_factor_kendaraan', 'load_factor_penumpang'], 'required'],
            [['id_report', 'id_kmp', 'id_muatan_penumpang', 'frekuensi_trip'], 'integer'],
            [['load_factor_kendaraan', 'load_factor_penumpang'], 'number'],
            [['id_report'], 'exist', 'skipOnError' => true, 'targetClass' => SdpReport::className(), 'targetAttribute' => ['id_report' => 'id_report']],
            [['id_kmp'], 'exist', 'skipOnError' => true, 'targetClass' => DataKmp::className(), 'targetAttribute' => ['id_kmp' => 'id_kmp']],
            [['id_muatan_penumpang'], 'exist', 'skipOnError' => true, 'targetClass' => SdpMuatanPenumpang::className(), 'targetAttribute' => ['id_muatan_penumpang' => 'id_muatan_penumpang']],
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
            'id_kmp' => 'Id Kmp',
            'id_muatan_penumpang' => 'Id Muatan Penumpang',
            'frekuensi_trip' => 'Frekuensi Trip',
            'load_factor_kendaraan' => 'Load Factor Kendaraan',
            'load_factor_penumpang' => 'Load Factor Penumpang',
        ];
    }

    /**
     * Gets query for [[Report]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getReport()
    {
        return $this->hasOne(SdpReport::className(), ['id_report' => 'id_report']);
    }

    /**
     * Gets query for [[Kmp]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getKmp()
    {
        return $this->hasOne(DataKmp::className(), ['id_kmp' => 'id_kmp']);
    }

    /**
     * Gets query for [[MuatanPenumpang]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getMuatanPenumpang()
    {
        return $this->hasOne(SdpMuatanPenumpang::className(), ['id_muatan_penumpang' => 'id_muatan_penumpang']);
    }

    /**
     * Gets query for [[SdpMuatanKendaraans]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getSdpMuatanKendaraans()
    {
        return $this->hasMany(SdpMuatanKendaraan::className(), ['id_detail_report' => 'id_detail_report']);
    }
}
