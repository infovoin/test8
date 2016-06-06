<?php


namespace app\models;

use Google_Client;
use Google_Service_YouTube;
use Yii;
use yii\base\Model;


class YoutubeApi extends Model
{
    const YOUR_APP_KEY = 'AIzaSyCm47giTJlLP28Mm7XocNSPaWJ4Pdj-6MA';

    public $videoUrl;
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


    //Пока нет времени читать что делает родительский конструктор и что содержит в себе массив config для моей задачи пока не вижу в этом необходимости а после задания прочитаю =)
    //function __construct(array $config)
    function __construct(string $url)
    {

        $client = new Google_Client();
        $client->setDeveloperKey(self::YOUR_APP_KEY);

        $videoId = $this->getIdFromUrl($url);
        if ($videoId) {

            $this->videoUrl = $url;
            $youtube = new Google_Service_YouTube($client);
            $videoInfo = $this->videosListById($youtube, 'snippet,contentDetails,statistics', $videoId);
            $this->videoViewCount = $videoInfo['statistics']['viewCount'];
            $this->videoCommentCount = $videoInfo['statistics']['commentCount'];
            $this->videoDislikeCount = $videoInfo['statistics']['dislikeCount'];
            $this->videolikeCount = $videoInfo['statistics']['likeCount'];

            $this->youtubeVideoId = $videoInfo['id'];
            $this->videoTitle = $videoInfo['snippet']['title'];
            $this->channelTitle = $videoInfo['snippet']['channelTitle'];
            $this->videoDescription = $videoInfo['snippet']['description'];
            $this->youtubeChannelId = $videoInfo['snippet']['channelId'];
            $this->videoThumbnailsUrl = $this->isStandardThumbnails($videoInfo['snippet']['thumbnails']);


            $channelInfo = $this->channelsListById($youtube, 'snippet,contentDetails,statistics', $this->youtubeChannelId);
            $this->channelSubscriberCount = $channelInfo['statistics']['subscriberCount'];
        }
    }

    protected function getIdFromUrl($url)
    {
        $pattern =
            '%^# Match any youtube URL
    (?:https?://)?  # Optional scheme. Either http or https
    (?:www\.)?      # Optional www subdomain
    (?:             # Group host alternatives
      youtu\.be/    # Either youtu.be,
    | youtube\.com  # or youtube.com
      (?:           # Group path alternatives
        /embed/     # Either /embed/
      | /v/         # or /v/
      | .*v=        # or /watch\?v=
      )             # End path alternatives.
    )               # End host alternatives.
    ([\w-]{10,12})  # Allow 10-12 for 11 char youtube id.
    ($|&).*         # if additional parameters are also in query string after video id.
    $%x';
        $result = preg_match($pattern, $url, $matches);
        if (false !== $result) {
            return $matches[1];
        }
        return false;
    }

    protected function videosListById($youtube, $part, $id)
    {
        $response = $youtube->videos->listVideos(
            $part,
            array(
                'id' => $id
            )
        );
        return $response[0];
    }

    protected function channelsListById($youtube, $part, $id)
    {
        $response = $youtube->channels->listChannels(
            $part,
            array(
                'id' => $id
            )
        );
        return $response[0];
    }

    protected function isStandardThumbnails($thumbnails)
    {
        if (isset($thumbnails['standard']['url'])) {
            return $thumbnails['standard']['url'];

        } elseif (isset($thumbnails['high']['url'])) {
            return $thumbnails['high']['url'];

        } elseif (isset($thumbnails['medium']['url'])) {
            return $thumbnails['medium']['url'];

        } elseif (isset($thumbnails['default']['url'])) {
            return $thumbnails['default']['url'];
        }
    }
    
}