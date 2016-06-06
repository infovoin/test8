<?php
//var_dump($videos);
?>

<div class="site-index">
    <div class="jumbotron">
        <h1>Отслеживание статистики</h1>
    </div>
</div>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>


<script>
    google.charts.load('current', {packages: ['corechart', 'line']});
    /*google.charts.setOnLoadCallback(drawBasic);*/

    function drawChartOneLine(dataArray, title, id_div) {

        var data = new google.visualization.DataTable();
        data.addColumn('number', 'X');
        data.addColumn('number', title);

        data.addRows(
            dataArray
        );

        var options = {
            hAxis: {
                title: 'Time'
            },
            vAxis: {
                title: 'Popularity'
            },
            'width': 800,
            'height': 400
        };
        var chart = new google.visualization.LineChart(document.getElementById(id_div));
        chart.draw(data, options);
    }

    function drawChartTwoLine(dataArray, title1, title2, id_div) {

        var data = new google.visualization.DataTable();
        data.addColumn('number', 'X');
        data.addColumn('number', title1);
        data.addColumn('number', title2);

        data.addRows(
            dataArray
        );

        var options = {
            hAxis: {
                title: 'Time'
            },
            vAxis: {
                title: 'Popularity'
            },
            'width': 800,
            'height': 400
        };
        var chart = new google.visualization.LineChart(document.getElementById(id_div));
        chart.draw(data, options);
    }
</script>

<?php foreach ($videos as $video): ?>
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
                        <div id="<?= $video->youtube_video_id . '_chart_view_count' ?>"></div>
                        <script>
                            google.charts.setOnLoadCallback(function () {
                                drawChartOneLine([<?php echo $video->statistics['video_view_count']; ?>], 'Views count', '<?= $video->youtube_video_id . '_chart_view_count' ?>');
                            });
                        </script>
                    </div>
                    <div class="tab-pane" id="<?= $video->youtube_video_id ?>_comment_count">
                        <div id="<?= $video->youtube_video_id ?>_chart_comment_count"></div>
                        <script>
                            google.charts.setOnLoadCallback(function () {
                                drawChartOneLine([<?php echo $video->statistics['video_comment_count']; ?>], 'Comments count', '<?= $video->youtube_video_id ?>_chart_comment_count');
                            });
                        </script>
                    </div>
                    <div class="tab-pane" id="<?= $video->youtube_video_id ?>_like_dislike">
                        <div id="<?= $video->youtube_video_id ?>_chart_like_dislike"></div>
                        <script>
                            google.charts.setOnLoadCallback(function () {
                                drawChartTwoLine([<?php echo $video->statistics['video_like_dislike_count']; ?>], 'like', 'dislike', '<?= $video->youtube_video_id ?>_chart_like_dislike');
                            });
                        </script>
                    </div>
                    <div class="tab-pane" id="<?= $video->youtube_video_id ?>_subscriber_count">
                        <div id="<?= $video->youtube_video_id ?>_chart_subscriber_count"></div>
                        <script>
                            google.charts.setOnLoadCallback(function () {
                                drawChartOneLine([<?php echo $video->statistics['channel_subscriber_count']; ?>], 'Subscribers count', '<?= $video->youtube_video_id ?>_chart_subscriber_count');
                            });
                        </script>
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

