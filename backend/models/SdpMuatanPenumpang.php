<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "sdp_muatan_penumpang".
 *
 * @property int $id_muatan_penumpang
 * @property int $jumlah_pnp_ekonomi_dewasa
 * @property int $jumlah_pnp_ekonomi_anak
 * @property int $jumlah_pnp_bisnis_dewasa
 * @property int $jumlah_pnp_bisnis_anak
 *
 * @property SdpDetailReport[] $sdpDetailReports
 */
class SdpMuatanPenumpang extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'sdp_muatan_penumpang';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['jumlah_pnp_ekonomi_dewasa', 'jumlah_pnp_ekonomi_anak', 'jumlah_pnp_bisnis_dewasa', 'jumlah_pnp_bisnis_anak'], 'required'],
            [['jumlah_pnp_ekonomi_dewasa', 'jumlah_pnp_ekonomi_anak', 'jumlah_pnp_bisnis_dewasa', 'jumlah_pnp_bisnis_anak'], 'integer'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_muatan_penumpang' => 'Id Muatan Penumpang',
            'jumlah_pnp_ekonomi_dewasa' => 'Jumlah Pnp Ekonomi Dewasa',
            'jumlah_pnp_ekonomi_anak' => 'Jumlah Pnp Ekonomi Anak',
            'jumlah_pnp_bisnis_dewasa' => 'Jumlah Pnp Bisnis Dewasa',
            'jumlah_pnp_bisnis_anak' => 'Jumlah Pnp Bisnis Anak',
        ];
    }

    /**
     * Gets query for [[SdpDetailReports]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getSdpDetailReports()
    {
        return $this->hasMany(SdpDetailReport::className(), ['id_muatan_penumpang' => 'id_muatan_penumpang']);
    }
}
