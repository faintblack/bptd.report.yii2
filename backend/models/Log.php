<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "log".
 *
 * @property int $id_log
 * @property string $waktu
 * @property string $username
 * @property string $proses
 * @property string $objek
 * @property string $keterangan
 */
class Log extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'log';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['waktu', 'username', 'proses', 'objek', 'keterangan'], 'required'],
            [['waktu'], 'safe'],
            [['username'], 'string', 'max' => 16],
            [['proses'], 'string', 'max' => 12],
            [['objek'], 'string', 'max' => 30],
            [['keterangan'], 'string', 'max' => 250],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_log' => 'Id Log',
            'waktu' => 'Waktu',
            'username' => 'Username',
            'proses' => 'Proses',
            'objek' => 'Objek',
            'keterangan' => 'Keterangan',
        ];
    }
}
