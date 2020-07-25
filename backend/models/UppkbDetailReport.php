<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "uppkb_detail_report".
 *
 * @property int $id_detail_report
 * @property int $id_unit
 * @property string $no_ktp_supir
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
 * @property string $tanggal
 *
 * @property DataJenisMuatan $jenisMuatan
 * @property DataDaerah $asal
 * @property DataDaerah $tujuan
 * @property UppkbPengemudi $noKtpSupir
 * @property Unit $unit
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
            [['id_unit', 'no_ktp_supir', 'id_jenis_muatan', 'nomor_kendaraan', 'jenis_kendaraan', 'berat_kendaraan', 'jbi', 'hasil_penimbangan', 'berat_muatan', 'kelebihan_muatan', 'asal', 'tujuan', 'tanggal'], 'required'],
            [['id_unit', 'id_jenis_muatan', 'berat_kendaraan', 'jbi', 'hasil_penimbangan', 'berat_muatan', 'kelebihan_muatan', 'asal', 'tujuan'], 'integer'],
            [['tanggal'], 'safe'],
            [['no_ktp_supir'], 'string', 'max' => 16],
            [['nomor_kendaraan'], 'string', 'max' => 10],
            [['jenis_kendaraan'], 'string', 'max' => 4],
            [['id_jenis_muatan'], 'exist', 'skipOnError' => true, 'targetClass' => DataJenisMuatan::class, 'targetAttribute' => ['id_jenis_muatan' => 'id_jenis_muatan']],
            [['asal'], 'exist', 'skipOnError' => true, 'targetClass' => DataDaerah::class, 'targetAttribute' => ['asal' => 'id_daerah']],
            [['tujuan'], 'exist', 'skipOnError' => true, 'targetClass' => DataDaerah::class, 'targetAttribute' => ['tujuan' => 'id_daerah']],
            [['no_ktp_supir'], 'exist', 'skipOnError' => true, 'targetClass' => UppkbPengemudi::class, 'targetAttribute' => ['no_ktp_supir' => 'no_ktp']],
            [['id_unit'], 'exist', 'skipOnError' => true, 'targetClass' => Unit::class, 'targetAttribute' => ['id_unit' => 'id_unit']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_detail_report' => 'Id Detail Report',
            'id_unit' => 'Id Unit',
            'no_ktp_supir' => 'No Ktp Supir',
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
            'tanggal' => 'Tanggal',
        ];
    }

    /**
     * Gets query for [[JenisMuatan]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getJenisMuatan()
    {
        return $this->hasOne(DataJenisMuatan::class, ['id_jenis_muatan' => 'id_jenis_muatan']);
    }

    /**
     * Gets query for [[Asal]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getAsal()
    {
        return $this->hasOne(DataDaerah::class, ['id_daerah' => 'asal']);
    }

    /**
     * Gets query for [[Tujuan]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getTujuan()
    {
        return $this->hasOne(DataDaerah::class, ['id_daerah' => 'tujuan']);
    }

    /**
     * Gets query for [[NoKtpSupir]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getNoKtpSupir()
    {
        return $this->hasOne(UppkbPengemudi::class, ['no_ktp' => 'no_ktp_supir']);
    }

    /**
     * Gets query for [[Unit]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getUnit()
    {
        return $this->hasOne(Unit::class, ['id_unit' => 'id_unit']);
    }
}
