<?php


namespace app\models;

use Yii;
use yii\base\Model;
use Madcoda\Youtube;


class YoutubeApi extends Model
{

    public $videoViewCount;
    public $videoCommentCount;
    public $videolikeCount;
    public $videoDislikeCount;
    public $channelSubscriberCount;


    public $youtubeVideoId;
    public $videoTitle;
    public $channelTitle;
    public $videoDescription;
    public $youtubeChannelId;
    public $videoThumbnailsUrl;
    public $videoEmbedHtml;


    //Пока нет времени читать что делает родительский конструктор и что содержит в себе массив config для моей задачи пока не вижу в этом необходимости а после задания прочитаю =)
    //function __construct(array $config)
    function __construct(string $url)
    {
        //ключ запихал бы в конфиг останется время почитаю в документации
        $youtube = new Youtube(array('key' => 'AIzaSyCm47giTJlLP28Mm7XocNSPaWJ4Pdj-6MA'));

        $this->youtubeVideoId = $youtube->parseVIdFromURL($url);
        //здесь хранится общаяя информация о видео
        $videoInfo = $youtube->getVideoInfo($this->youtubeVideoId);
        $this->videoEmbedHtml = $videoInfo->player->embedHtml;
        $this->videoTitle = $videoInfo->snippet->title;
        $this->videoDescription = $videoInfo->snippet->description;
        $this->videoThumbnailsUrl = $videoInfo->snippet->thumbnails->default->url;
        $this->videoViewCount = $videoInfo->statistics->viewCount;
        $this->videoCommentCount = $videoInfo->statistics->commentCount;
        $this->videolikeCount = $videoInfo->statistics->likeCount;
        $this->videoDislikeCount = $videoInfo->statistics->dislikeCount;

        
        $this->youtubeChannelId = $videoInfo->snippet->channelId;
        //здесь хранится общая информация о канале.
        $channelInfo = $youtube->getChannelById($this->youtubeChannelId);
        $this->channelTitle = $videoInfo->snippet->channelTitle;
        $this->channelSubscriberCount = $channelInfo->statistics->subscriberCount;

    }

    

}