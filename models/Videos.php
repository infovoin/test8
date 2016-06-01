<?php


namespace app\models;


use yii\db\ActiveRecord;

class Videos extends ActiveRecord
{
    public static function tableName()
    {
        return 'videos';
    }

}