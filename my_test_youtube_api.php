<?php


require 'vendor/autoload.php';


use app\models\Videos;

/*use Madcoda\Youtube;

$videos = ['https://www.youtube.com/watch?v=gtMkq6IxVKk',
    'https://www.youtube.com/watch?v=rie-hPVJ7Sw',
    'https://www.youtube.com/watch?v=YsLBuCp23QA',
    'https://www.youtube.com/watch?v=AmkCxCNmoUE',
    'https://www.youtube.com/watch?v=gUIzH9czjFw'
];
//https://www.youtube.com/watch?v=F-mS2h28p9A //лайфхаки
//https://www.youtube.com/watch?v=0GjQDbLBWgE //Михаил Портнов

$youtube = new Youtube(array('key' => 'AIzaSyCm47giTJlLP28Mm7XocNSPaWJ4Pdj-6MA'));


$id_video = $youtube->parseVIdFromURL('https://www.youtube.com/watch?v=gtMkq6IxVKk');
$video_info = $youtube->getVideoInfo($id_video);


//Окно для видео
echo $video_info->player->embedHtml.'<br><br>';

//Название видео
echo $video_info->snippet->title.'<br><br>';

//- Название канала
echo $video_info->snippet->channelTitle.'<br><br>';

//- Описание видео
echo $video_info->snippet->description.'<br><br>';

//- Превьюшка
echo $video_info->snippet->thumbnails->standard->url.'<br><br>';
//На всякий случай оставляю их если свой класс буду создавать.
//var_dump($video_info->snippet->thumbnails->standard->width);
//var_dump($video_info->snippet->thumbnails->standard->height);


//- Количество просмотров
echo $video_info->statistics->viewCount.'<br><br>';

//- Количество комментов
echo $video_info->statistics->commentCount.'<br><br>';

//- Количество лайков дизлайков
echo $video_info->statistics->likeCount.'<br><br>';
echo $video_info->statistics->dislikeCount.'<br><br>';

// - Количество подписчиков.
//echo $video_info->snippet->statistics->;

$channelId = $video_info->snippet->channelId;

$channelId = $youtube->getChannelById($channelId);
echo $channelId->statistics->subscriberCount;*/

