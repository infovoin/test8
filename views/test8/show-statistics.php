<?php
use yii\helpers\Html;
use miloschuman\highcharts\Highcharts;
use miloschuman\highcharts\Highstock;
use miloschuman\highcharts\SeriesDataHelper;

?>


<div class="site-index">
    <div class="jumbotron">
        <h1>Отслеживание статистики</h1>
    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div>
            <?= $videoStatistics->videoEmbedHtml ?>
            <?= Highcharts::widget([
                'options' => [
                    'title' => ['text' => 'Statistics'],
                    'xAxis' => [
                        'categories' => ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
                            'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
                    ],
                    'yAxis' => [
                        'title' => ['text' => 'growth index']
                    ],
                    'series' => [
                        ['name' => 'Views count', 'data' => [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]],
                        ['name' => 'Comments count', 'data' => [0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5]],
                        ['name' => 'Subscribers count', 'data' => [-0.9, 0.6, 3.5, 8.4, 13.5, 17.0, 18.6, 17.9, 14.3, 9.0, 3.9, 1.0]],
                        ['name' => 'Likes', 'data' => [3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]],
                        ['name' => 'Dislikes', 'data' => [7.0, 6.9, 9.5, 14.5, 11.9, 15.2, 17.0, 16.6, 20.1, 14.1, 8.6, 2.5]],

                    ]
                ]
            ]);

            ?>
        </div>

        <table class="table table-striped">
            <tr>
                <td>Video title:</td>
                <td><?= $videoStatistics->videoTitle ?></td>
            </tr>
            <tr>
                <td>Channel title:</td>
                <td><?= $videoStatistics->channelTitle ?></td>
            </tr>
            <tr>
                <td>Video description:</td>
                <td><?= $videoStatistics->videoDescription ?></td>
            </tr>
            <tr>
                <td>Video thumbnail:</td>
                <td><?= $videoStatistics->videoThumbnailsUrl ?></td>
            </tr>
            <tr>
                <td>Views count:</td>
                <td><?= $videoStatistics->videoViewCount ?></td>
            </tr>
            <tr>
                <td>Comments count:</td>
                <td><?= $videoStatistics->videoCommentCount ?></td>
            </tr>
            <tr>
                <td>Likes/Dislikes</td>
                <td><?= $videoStatistics->videolikeCount ?> / <?= $videoStatistics->videoDislikeCount ?></td>
            </tr>
            <tr>
                <td>Subscribers count:</td>
                <td><?= $videoStatistics->channelSubscriberCount ?></td>
            </tr>
        </table>
    </div>
    <hr>
</div>


<!-- public $videoId;
 public $videoEmbedHtml;
 public $videoTitle;
 public $videoDescription;
 public $videoThumbnailsUrl;
 public $videoViewCount;
 public $videoCommentCount;
 public $videolikeCount;
 public $videoDislikeCount;

 public $channelId;
 public $channelTitle;
 public $channelSubscriberCount;-->