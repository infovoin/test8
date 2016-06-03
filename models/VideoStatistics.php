<?php


namespace app\models;


use Yii;
use yii\db\ActiveRecord;

class VideoStatistics extends ActiveRecord
{

    public static function getVideoStatisticsById($youtubeVideoId)
    {
        $sql = "SELECT
                    youtube_video_id,
                      JSON_AGG(video_view_count) AS video_view_count,
                      JSON_AGG(video_comment_count) AS video_comment_count,
                      JSON_AGG(video_like_count) AS video_like_count,
                      JSON_AGG(video_dislike_count) AS video_dislike_count,
                      JSON_AGG(channel_subscriber_count) AS channel_subscriber_count
                    FROM video_statistics where youtube_video_id = :youtube_video_id
                    GROUP BY youtube_video_id";

        $json = json_encode(Yii::$app->db->createCommand($sql)->bindValue(':youtube_video_id', $youtubeVideoId)->queryOne());
        $json = preg_replace('/"\[/', '[', $json);
        $json = preg_replace('/\]"/', ']', $json);

        return $json;
    }
}