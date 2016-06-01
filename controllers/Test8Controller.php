<?php


namespace app\controllers;

use app\models\Videos;
use app\models\YoutubeApi;
use yii\web\Controller;


class Test8Controller extends Controller
{
    public function actionShowStatistics()
    {
        $videoStatistics = new YoutubeApi('https://www.youtube.com/watch?v=AmkCxCNmoUE');
        return $this->render('show-statistics', ['videoStatistics' => $videoStatistics]);
    }

    public function actionIndex()
    {
        $query = Videos::find();
        $result = $query->all();
        var_dump($result);
        return $this->render('index', ['result' => $result]);
    }
}