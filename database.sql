CREATE DATABASE test8

CREATE TABLE videos
(
    id INTEGER DEFAULT nextval('videos_id_seq'::regclass) NOT NULL,
    video_title VARCHAR(255),
    channel_title VARCHAR(255),
    video_description TEXT,
    video_thumbnails_url VARCHAR(255),
    video_embed_html TEXT,
    youtube_channel_id VARCHAR(255),
    youtube_video_id VARCHAR(255)
);


CREATE TABLE statistics_video
(
    id INTEGER DEFAULT nextval('statistics_video_id_seq'::regclass) NOT NULL,
    video_view_count INTEGER,
    video_comment_count INTEGER,
    video_like_count INTEGER,
    video_dislike_count INTEGER,
    channel_subscriber_count INTEGER,
    videos_id INTEGER
);