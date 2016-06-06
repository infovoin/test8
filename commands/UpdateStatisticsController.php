<?php


namespace app\commands;


use app\models\Videos;
use app\models\VideoStatistics;
use app\models\YoutubeApi;
use yii\console\Controller;

class UpdateStatisticsController extends Controller
{

    public function actionIndex($message = 'hello world')
    {
        echo $message . "\n";
    }
    
    public function actionDo()
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
    }
}