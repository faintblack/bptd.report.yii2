<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "sdp_detail_report".
 *
 * @property int $id_detail_report
 * @property int $id_kmp
 * @property int $id_muatan_penumpang
 * @property int $id_muatan_kendaraan
 * @property int $frekuensi_trip
 * @property string $tanggal
 *
 * @property DataKmp $kmp
 * @property SdpMuatanPenumpang $muatanPenumpang
 * @property SdpMuatanKendaraan $muatanKendaraan
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
            [['id_kmp', 'id_muatan_penumpang', 'id_muatan_kendaraan', 'frekuensi_trip', 'tanggal'], 'required'],
            [['id_kmp', 'id_muatan_penumpang', 'id_muatan_kendaraan', 'frekuensi_trip'], 'integer'],
            [['tanggal'], 'safe'],
            [['id_kmp'], 'exist', 'skipOnError' => true, 'targetClass' => DataKmp::class, 'targetAttribute' => ['id_kmp' => 'id_kmp']],
            [['id_muatan_penumpang'], 'exist', 'skipOnError' => true, 'targetClass' => SdpMuatanPenumpang::class, 'targetAttribute' => ['id_muatan_penumpang' => 'id_muatan_penumpang']],
            [['id_muatan_kendaraan'], 'exist', 'skipOnError' => true, 'targetClass' => SdpMuatanKendaraan::class, 'targetAttribute' => ['id_muatan_kendaraan' => 'id_muatan_kendaraan']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_detail_report' => 'Id Detail Report',
            'id_kmp' => 'Id Kmp',
            'id_muatan_penumpang' => 'Id Muatan Penumpang',
            'id_muatan_kendaraan' => 'Id Muatan Kendaraan',
            'frekuensi_trip' => 'Frekuensi Trip',
            'tanggal' => 'Tanggal',
        ];
    }

    /**
     * Gets query for [[Kmp]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getKmp()
    {
        return $this->hasOne(DataKmp::class, ['id_kmp' => 'id_kmp']);
    }

    /**
     * Gets query for [[MuatanPenumpang]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getMuatanPenumpang()
    {
        return $this->hasOne(SdpMuatanPenumpang::class, ['id_muatan_penumpang' => 'id_muatan_penumpang']);
    }

    /**
     * Gets query for [[MuatanKendaraan]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getMuatanKendaraan()
    {
        return $this->hasOne(SdpMuatanKendaraan::class, ['id_muatan_kendaraan' => 'id_muatan_kendaraan']);
    }
}
