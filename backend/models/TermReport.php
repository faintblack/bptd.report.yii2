<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "term_report".
 *
 * @property int $id_report
 * @property int $id_unit
 * @property string $tanggal
 *
 * @property TermDetailReport[] $termDetailReports
 * @property Unit $unit
 */
class TermReport extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'term_report';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_unit', 'tanggal'], 'required'],
            [['id_unit'], 'integer'],
            [['tanggal'], 'safe'],
            [['id_unit'], 'exist', 'skipOnError' => true, 'targetClass' => Unit::className(), 'targetAttribute' => ['id_unit' => 'id_unit']],
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
            'tanggal' => 'Tanggal',
        ];
    }

    /**
     * Gets query for [[TermDetailReports]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getTermDetailReports()
    {
        return $this->hasOne(TermDetailReport::className(), ['id_report' => 'id_report']);
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
}
