<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "uppkb_report".
 *
 * @property int $id_report
 * @property int $id_unit
 * @property string $no_ktp
 * @property string $tanggal
 *
 * @property UppkbDetailReport[] $uppkbDetailReports
 * @property Unit $unit
 * @property UppkbPengemudi $noKtp
 */
class UppkbReport extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'uppkb_report';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_unit', 'no_ktp', 'tanggal'], 'required'],
            [['id_unit'], 'integer'],
            [['tanggal'], 'safe'],
            [['no_ktp'], 'string', 'max' => 16],
            [['id_unit'], 'exist', 'skipOnError' => true, 'targetClass' => Unit::className(), 'targetAttribute' => ['id_unit' => 'id_unit']],
            [['no_ktp'], 'exist', 'skipOnError' => true, 'targetClass' => UppkbPengemudi::className(), 'targetAttribute' => ['no_ktp' => 'no_ktp']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_report' => 'Id Report',
            'id_unit' => 'Id Unit',
            'no_ktp' => 'No Ktp',
            'tanggal' => 'Tanggal',
        ];
    }

    /**
     * Gets query for [[UppkbDetailReports]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getUppkbDetailReports()
    {
        return $this->hasMany(UppkbDetailReport::className(), ['id_report' => 'id_report']);
    }

    /**
     * Gets query for [[Unit]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getUnit()
    {
        return $this->hasOne(Unit::className(), ['id_unit' => 'id_unit']);
    }

    /**
     * Gets query for [[NoKtp]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getNoKtp()
    {
        return $this->hasOne(UppkbPengemudi::className(), ['no_ktp' => 'no_ktp']);
    }
}
