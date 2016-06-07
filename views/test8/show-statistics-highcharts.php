<?php
use miloschuman\highcharts\Highcharts;

?>

<div class="site-index">
    <div class="jumbotron">
        <h1>Отслеживание статистики</h1>
    </div>
</div>


<? foreach ($videos as $video): ?>
    <?php $video['statistics'] = json_decode($video['statistics']); ?>
    <div class="row">
        <div class="col-lg-5">
            <p><img src="<?= $video->video_thumbnails_url ?>" width="480" height="360"></p>
        </div>
        <div class="col-lg-6">

            <div>
                <ul class="nav nav-tabs" data-tabs="tabs">
                    <li class="active"><a data-toggle="tab" href="#<?= $video->youtube_video_id ?>_view_count">Views
                            count</a></li>
                    <li><a data-toggle="tab" href="#<?= $video->youtube_video_id ?>_comment_count">Comments count</a>
                    </li>
                    <li><a data-toggle="tab" href="#<?= $video->youtube_video_id ?>_like_dislike">like / dislike</a>
                    </li>
                    <li><a data-toggle="tab" href="#<?= $video->youtube_video_id ?>_subscriber_count">Subscribers
                            count</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="<?= $video->youtube_video_id ?>_view_count">
                        <?php echo Highcharts::widget([
                            'options' => [
                                'title' => ['text' => 'Views count'],
                                'xAxis' => [
                                    'categories' => []
                                ],
                                'yAxis' => [
                                    'title' => ['text' => 'growth index']
                                ],
                                'series' => [
                                    ['name' => 'Views count', 'data' => $video['statistics']->video_view_count],
                                ]
                            ]
                        ]); ?>
                    </div>
                    <div class="tab-pane" id="<?= $video->youtube_video_id ?>_comment_count">
                        <?php echo Highcharts::widget([
                            'options' => [
                                'title' => ['text' => 'Comments count'],
                                'xAxis' => [
                                    'categories' => []
                                ],
                                'yAxis' => [
                                    'title' => ['text' => 'growth index']
                                ],
                                'series' => [
                                    ['name' => 'Comment count', 'data' => $video['statistics']->video_comment_count],
                                ]
                            ]
                        ]); ?>
                    </div>
                    <div class="tab-pane" id="<?= $video->youtube_video_id ?>_like_dislike">
                        <?php echo Highcharts::widget([
                            'options' => [
                                'title' => ['text' => 'Likes / dislikes'],
                                'xAxis' => [
                                    'categories' => []
                                ],
                                'yAxis' => [
                                    'title' => ['text' => 'growth index']
                                ],
                                'series' => [
                                    ['name' => 'Like count', 'data' => $video['statistics']->video_like_count],
                                    ['name' => 'Dislike count', 'data' => $video['statistics']->video_dislike_count],
                                ]
                            ]
                        ]);
                        ?>
                    </div>
                    <div class="tab-pane" id="<?= $video->youtube_video_id ?>_subscriber_count">
                        <?php echo Highcharts::widget([
                            'options' => [
                                'title' => ['text' => 'Subscribers count'],
                                'xAxis' => [
                                    'categories' => []
                                ],
                                'yAxis' => [
                                    'title' => ['text' => 'growth index']
                                ],
                                'series' => [
                                    ['name' => 'Subscriber count', 'data' => $video['statistics']->channel_subscriber_count],
                                ]
                            ]
                        ]); ?>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <table class="table table-striped">
                    <tr>
                        <td>Video title:</td>
                        <td><?= $video->video_title ?></td>
                    </tr>
                    <tr>
                        <td>Channel title:</td>
                        <td><?= $video->channel_title ?></td>
                    </tr>
                    <tr>
                        <td>Video description:</td>
                        <td><?= $video->video_description ?></td>
                    </tr>
                </table>
            </div>
        </div>
        <hr>
        <div style="height: 70px;"></div>

    </div>

<?php endforeach; ?>
