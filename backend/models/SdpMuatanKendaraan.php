<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "sdp_muatan_kendaraan".
 *
 * @property int $id_muatan_kendaraan
 * @property int $id_detail_report
 * @property int $golongan_kendaraan
 * @property int $jumlah_penumpang
 * @property int $jumlah_kendaraan
 *
 * @property SdpDetailReport $detailReport
 */
class SdpMuatanKendaraan extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'sdp_muatan_kendaraan';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_detail_report', 'golongan_kendaraan', 'jumlah_penumpang', 'jumlah_kendaraan'], 'required'],
            [['id_detail_report', 'golongan_kendaraan', 'jumlah_penumpang', 'jumlah_kendaraan'], 'integer'],
            [['id_detail_report'], 'exist', 'skipOnError' => true, 'targetClass' => SdpDetailReport::className(), 'targetAttribute' => ['id_detail_report' => 'id_detail_report']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_muatan_kendaraan' => 'Id Muatan Kendaraan',
            'id_detail_report' => 'Id Detail Report',
            'golongan_kendaraan' => 'Golongan Kendaraan',
            'jumlah_penumpang' => 'Jumlah Penumpang',
            'jumlah_kendaraan' => 'Jumlah Kendaraan',
        ];
    }

    /**
     * Gets query for [[DetailReport]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getDetailReport()
    {
        return $this->hasOne(SdpDetailReport::className(), ['id_detail_report' => 'id_detail_report']);
    }
}
