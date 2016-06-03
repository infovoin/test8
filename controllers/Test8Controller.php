<?php


namespace app\controllers;

use app\models\VideoStatistics;
use app\models\Videos;
use app\models\YoutubeApi;
use yii\web\Controller;


class Test8Controller extends Controller
{
    public function actionShowStatistics()
    {
        $videos = Videos::find()->all();

        foreach ($videos as &$video) {
            $json = VideoStatistics::getVideoStatisticsById($video->youtube_video_id);
            $video->statistics = $json;
        }
        return $this->render('show-statistics', ['videos' => $videos]);
    }

    public function actionAddVideos()
    {
        $url = 'https://www.youtube.com/watch?v=AmkCxCNmoUE';
        $videoStatistics = new YoutubeApi($url);

        $video = new Videos();
        $video->youtube_video_id = $videoStatistics->youtubeVideoId;
        $video->video_title = $videoStatistics->videoTitle;
        $video->channel_title = $videoStatistics->channelTitle;
        $video->video_description = $videoStatistics->videoDescription;
        $video->video_thumbnails_url = $videoStatistics->videoThumbnailsUrl;
        $video->youtube_channel_id = $videoStatistics->youtubeChannelId;
        $video->video_url = $videoStatistics->videoUrl;

        $video->save();
    }

/*
    public function actionUpdateStatistics()
    {
        $videos = Videos::find()->all();
        foreach ($videos as $video) {
            $videoStatistics = new YoutubeApi($video['video_url']);

            $statistics = new VideoStatistics();
            $statistics->video_view_count = $videoStatistics->videoViewCount;
            $statistics->video_comment_count = $videoStatistics->videoCommentCount;
            $statistics->video_like_count = $videoStatistics->videolikeCount;
            $statistics->video_dislike_count = $videoStatistics->videoDislikeCount;
            $statistics->channel_subscriber_count = $videoStatistics->channelSubscriberCount;
            $statistics->youtube_video_id = $videoStatistics->youtubeVideoId;

            $statistics->save();
        }
    }*/

}