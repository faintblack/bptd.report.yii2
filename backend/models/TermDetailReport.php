<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "term_detail_report".
 *
 * @property int $id_detail_report
 * @property int $id_unit
 * @property int $id_kendaraan
 * @property int $id_penumpang
 * @property string $jenis_tujuan
 * @property string $tipe_perjalanan
 * @property string $tanggal
 *
 * @property TermKendaraan $kendaraan
 * @property TermPenumpang $penumpang
 * @property Unit $unit
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
            [['id_unit', 'id_kendaraan', 'id_penumpang', 'jenis_tujuan', 'tipe_perjalanan', 'tanggal'], 'required'],
            [['id_unit', 'id_kendaraan', 'id_penumpang'], 'integer'],
            [['tanggal'], 'safe'],
            [['jenis_tujuan'], 'string', 'max' => 4],
            [['tipe_perjalanan'], 'string', 'max' => 10],
            [['id_kendaraan'], 'exist', 'skipOnError' => true, 'targetClass' => TermKendaraan::class, 'targetAttribute' => ['id_kendaraan' => 'id_kendaraan']],
            [['id_penumpang'], 'exist', 'skipOnError' => true, 'targetClass' => TermPenumpang::class, 'targetAttribute' => ['id_penumpang' => 'id_penumpang']],
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
            'id_unit' => 'Unit',
            'id_kendaraan' => 'Jumlah Kendaraan',
            'id_penumpang' => 'Jumlah Penumpang',
            'jenis_tujuan' => 'Jenis Tujuan',
            'tipe_perjalanan' => 'Tipe Perjalanan',
            'tanggal' => 'Tanggal',
        ];
    }

    /**
     * Gets query for [[Kendaraan]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getKendaraan()
    {
        return $this->hasOne(TermKendaraan::class, ['id_kendaraan' => 'id_kendaraan']);
    }

    /**
     * Gets query for [[Penumpang]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getPenumpang()
    {
        return $this->hasOne(TermPenumpang::class, ['id_penumpang' => 'id_penumpang']);
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
