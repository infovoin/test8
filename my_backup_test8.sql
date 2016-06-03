CREATE DATABASE test8

CREATE TABLE video_statistics
(
    id INTEGER DEFAULT nextval('statistics_video_id_seq'::regclass) NOT NULL,
    video_view_count INTEGER,
    video_comment_count INTEGER,
    video_like_count INTEGER,
    video_dislike_count INTEGER,
    channel_subscriber_count INTEGER,
    youtube_video_id CHAR(11),
    time TIMESTAMP DEFAULT now()
);
CREATE INDEX statistics_video_youtube_video_id_index ON video_statistics (youtube_video_id);
CREATE INDEX statistics_video_time_index ON video_statistics (time);



CREATE TABLE videos
(
    video_title VARCHAR(255),
    channel_title VARCHAR(255),
    video_description TEXT,
    video_thumbnails_url VARCHAR(255),
    youtube_channel_id VARCHAR(255),
    youtube_video_id CHAR(11),
    video_url VARCHAR(255)
);
CREATE UNIQUE INDEX videos_youtube_video_id_uindex ON videos (youtube_video_id);






INSERT INTO public.videos (video_title, channel_title, video_description, video_thumbnails_url, youtube_channel_id, youtube_video_id, video_url) VALUES ('Пранк без Оскара', 'UC Browser Russia', 'Почему бы не попробовать что-то новое и быстрое? Найдите больше информации об обновлении UC Browser.
Ускорь свой веб-серфинг, скачай UC Browser: https://play.google.com/store/apps/de...
Official VK: http://bit.ly/1pIIn9m', 'https://i.ytimg.com/vi/8u0JOQePOx4/sddefault.jpg', 'UCZwwLv-Aj-fzSznssJRX8vA', '8u0JOQePOx4', 'https://www.youtube.com/watch?v=8u0JOQePOx4');
INSERT INTO public.videos (video_title, channel_title, video_description, video_thumbnails_url, youtube_channel_id, youtube_video_id, video_url) VALUES ('1000 ЛИТРОВ КОКА-КОЛА + МЕНТОС / 1000 liters of Coca-Cola + Mentos', 'Mamix', 'Мой Вк - https://vk.com/n1maks
100 литров колы  -http://qps.ru/hu6L1
Канал Степы -  http://qps.ru/Hmy09
Канал Лехи - http://qps.ru/RiZxa', 'https://i.ytimg.com/vi/PtDJr0Vqffg/sddefault.jpg', 'UCD7eAFZw7jk1eoqInkU2PbA', 'PtDJr0Vqffg', 'https://www.youtube.com/watch?v=PtDJr0Vqffg');
INSERT INTO public.videos (video_title, channel_title, video_description, video_thumbnails_url, youtube_channel_id, youtube_video_id, video_url) VALUES ('Боевая кухня Чака Норриса в России!', 'Hoegaarden 0.0 Russia', 'Боевая кухня Чака Норриса в России!  Теперь и мужчины России узнают секреты вкуса!



Регистрируйся на мастер-класс на http://hoegaarden00.com', 'https://i.ytimg.com/vi/2K4oJPefBGQ/sddefault.jpg', 'UC80GihAOMLGxoUj2UuL305g', '2K4oJPefBGQ', 'https://www.youtube.com/watch?v=2K4oJPefBGQ');
INSERT INTO public.videos (video_title, channel_title, video_description, video_thumbnails_url, youtube_channel_id, youtube_video_id, video_url) VALUES ('Есть вещи, о которых ты будешь жалеть', 'За безопасность на производстве', 'У каждого из нас есть поступки, о которых мы по-настоящему жалеем. Но ведь можно было просто их не совершать', 'https://i.ytimg.com/vi/Zc2KJ8cBIgo/sddefault.jpg', 'UC_QChcHqvGCJwSZT4WAEI8A', 'Zc2KJ8cBIgo', 'https://www.youtube.com/watch?v=Zc2KJ8cBIgo');
INSERT INTO public.videos (video_title, channel_title, video_description, video_thumbnails_url, youtube_channel_id, youtube_video_id, video_url) VALUES ('Find Me At FailedNormal.com', 'Eli the Computer Guy', 'If you''re missing seeing my fuzzy face check out my vlog channel at http://www.FailedNormal.com as I take you along on the adventure to South East Asia!

****

SPONSORS:

INE (Online IT Training): http://goo.gl/cHDXC5

Bugcrowd (CrowdSourced Security): https://goo.gl/50d0EE

Plixer (Netflow Analytics): https://goo.gl/2dY1zw

Schooley Michell (Telecom/ Datacom Purchasing): http://goo.gl/Lk7E7m

Gillware Data Recovery (Data Recovery Partner Program): http://goo.gl/kTRwn3

****

Attend Question/ Answer MEETUP: http://goo.gl/kPHGFw

Schedule a Skype Meeting with Eli: https://silicondiscourse.com

Podcasts of New Videos at SoundCloud: https://soundcloud.com/elithecomputerguy

To Ask Questions Email: Question@EliTheComputerGuy.com

For Classes, Class Notes and Blog Posts:
http://www.EliTheComputerGuy.com

Visit the Main YouTube Channel at:
http://www.YouTube.com/EliTheComputerGuy

Follow us on Twitter at:
http://www.Twitter.com/EliComputerGuy

**********', 'https://i.ytimg.com/vi/AmkCxCNmoUE/hqdefault.jpg', 'UCD4EOyXKjfDUhCI6jlOZZYQ', 'AmkCxCNmoUE', 'https://www.youtube.com/watch?v=AmkCxCNmoUE');
INSERT INTO public.videos (video_title, channel_title, video_description, video_thumbnails_url, youtube_channel_id, youtube_video_id, video_url) VALUES ('Черепашки Ниндзя полный контейнер игрушек открываем TMNT Giant container with toys unboxing', 'Mister Max', 'Макс открывает огромный контейнер с игрушками из мультика Черепашки Ниндзя, боксирует и играет с интерактивными игрушками
Max opens a huge container with TNMT toys Teenage Mutant Ninja Turtles, boxing and playing with interactive toys

Спасибо, что смотрите мое видео! 
Thanks for watching my video!

Please - Like, Comment...Subscribe to my channel
Ставьте лайки! Подписывайтесь на мой канал 
https://www.youtube.com/channel/UC_8PAD0Qmi6_gpe77S1Atgg/feed?view_as=public

Канал моей сетренки Miss Katy  https://www.youtube.com/channel/UCcartHVtvAUzfajflyeT_Gg

Партнерка как у меня 
http://www.air.io/?page_id=1432&aff=1031', 'https://i.ytimg.com/vi/47J6yzepsf8/sddefault.jpg', 'UC_8PAD0Qmi6_gpe77S1Atgg', '47J6yzepsf8', 'https://www.youtube.com/watch?v=47J6yzepsf8');








INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (27, 3368924, 912, 10324, 22590, 15731, '8u0JOQePOx4', '2016-06-02 20:26:01.843144');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (28, 1895453, 10591, 257635, 11399, 450761, 'PtDJr0Vqffg', '2016-06-02 20:26:02.293689');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (29, 1812455, 162, 2215, 1367, 1394, '2K4oJPefBGQ', '2016-06-02 20:26:02.671020');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (30, 598374, 106, 4259, 467, 3330, 'Zc2KJ8cBIgo', '2016-06-02 20:26:03.088219');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (31, 2330339, 3235, 17810, 6278, 1842806, '47J6yzepsf8', '2016-06-02 20:26:03.466079');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (32, 3368924, 912, 10324, 22590, 15731, '8u0JOQePOx4', '2016-06-02 20:27:25.096511');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (33, 1895453, 10597, 257785, 11409, 450812, 'PtDJr0Vqffg', '2016-06-02 20:27:25.599938');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (34, 1812455, 162, 2215, 1367, 1394, '2K4oJPefBGQ', '2016-06-02 20:27:25.966174');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (35, 598374, 106, 4259, 467, 3330, 'Zc2KJ8cBIgo', '2016-06-02 20:27:26.337596');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (36, 2330339, 3235, 17810, 6278, 1842808, '47J6yzepsf8', '2016-06-02 20:27:26.724291');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (37, 3368924, 912, 10326, 22593, 15731, '8u0JOQePOx4', '2016-06-02 20:42:14.284168');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (38, 1908417, 10645, 259247, 11514, 451426, 'PtDJr0Vqffg', '2016-06-02 20:42:14.735256');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (39, 1812859, 162, 2216, 1368, 1394, '2K4oJPefBGQ', '2016-06-02 20:42:15.133726');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (40, 598374, 106, 4266, 468, 3332, 'Zc2KJ8cBIgo', '2016-06-02 20:42:15.517058');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (41, 2345618, 3240, 17818, 6280, 1842849, '47J6yzepsf8', '2016-06-02 20:42:15.932716');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (42, 3370242, 912, 10327, 22597, 15731, '8u0JOQePOx4', '2016-06-02 20:47:57.486736');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (43, 1908417, 10665, 259821, 11550, 451640, 'PtDJr0Vqffg', '2016-06-02 20:47:57.954474');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (44, 1812859, 162, 2217, 1368, 1394, '2K4oJPefBGQ', '2016-06-02 20:47:58.337375');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (45, 598374, 107, 4267, 468, 3332, 'Zc2KJ8cBIgo', '2016-06-02 20:47:58.743064');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (46, 2345618, 3241, 17820, 6281, 1842867, '47J6yzepsf8', '2016-06-02 20:47:59.154290');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (47, 3370242, 912, 10327, 22597, 15731, '8u0JOQePOx4', '2016-06-02 20:48:13.067139');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (48, 1908417, 10665, 259852, 11551, 451649, 'PtDJr0Vqffg', '2016-06-02 20:48:13.545669');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (49, 1812859, 162, 2217, 1368, 1394, '2K4oJPefBGQ', '2016-06-02 20:48:13.950960');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (50, 598374, 107, 4267, 468, 3332, 'Zc2KJ8cBIgo', '2016-06-02 20:48:14.367309');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (51, 2345618, 3241, 17820, 6281, 1842867, '47J6yzepsf8', '2016-06-02 20:48:14.764473');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (52, 3370242, 913, 10328, 22598, 15730, '8u0JOQePOx4', '2016-06-02 20:54:40.778397');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (53, 1908417, 10689, 260452, 11598, 451870, 'PtDJr0Vqffg', '2016-06-02 20:54:41.212907');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (54, 1812859, 162, 2218, 1368, 1394, '2K4oJPefBGQ', '2016-06-02 20:54:41.591266');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (55, 598374, 109, 4270, 468, 3332, 'Zc2KJ8cBIgo', '2016-06-02 20:54:41.999499');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (56, 2345618, 3241, 17820, 6283, 1842876, '47J6yzepsf8', '2016-06-02 20:54:42.387428');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (57, 3371820, 913, 10330, 22599, 15730, '8u0JOQePOx4', '2016-06-02 21:16:31.830235');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (58, 1908417, 10733, 262227, 11720, 452506, 'PtDJr0Vqffg', '2016-06-02 21:16:32.293534');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (59, 1812859, 162, 2218, 1368, 1393, '2K4oJPefBGQ', '2016-06-02 21:16:32.713637');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (60, 610670, 111, 4274, 469, 3332, 'Zc2KJ8cBIgo', '2016-06-02 21:16:33.128714');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (61, 44451, 68, 291, 52, 700431, 'AmkCxCNmoUE', '2016-06-02 21:16:33.568444');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (62, 2345618, 3241, 17826, 6291, 1842904, '47J6yzepsf8', '2016-06-02 21:16:33.987294');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (63, 3371820, 913, 10331, 22601, 15730, '8u0JOQePOx4', '2016-06-02 21:23:53.104781');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (64, 1924951, 10750, 262758, 11760, 452677, 'PtDJr0Vqffg', '2016-06-02 21:23:53.606178');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (65, 1812859, 162, 2219, 1368, 1392, '2K4oJPefBGQ', '2016-06-02 21:23:54.151865');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (66, 610670, 111, 4277, 469, 3333, 'Zc2KJ8cBIgo', '2016-06-02 21:23:54.594116');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (67, 44451, 68, 291, 52, 700437, 'AmkCxCNmoUE', '2016-06-02 21:23:55.028595');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (68, 2364599, 3242, 17828, 6296, 1842913, '47J6yzepsf8', '2016-06-02 21:23:55.677547');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (69, 3373424, 938, 10332, 22620, 15731, '8u0JOQePOx4', '2016-06-02 22:53:25.174334');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (70, 1975419, 10896, 266474, 12076, 454084, 'PtDJr0Vqffg', '2016-06-02 22:53:25.686844');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (71, 1813890, 162, 2221, 1370, 1395, '2K4oJPefBGQ', '2016-06-02 22:53:26.065894');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (72, 635473, 112, 4291, 471, 3336, 'Zc2KJ8cBIgo', '2016-06-02 22:53:26.431924');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (73, 44518, 68, 291, 52, 700457, 'AmkCxCNmoUE', '2016-06-02 22:53:26.819048');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (74, 2385056, 3259, 17840, 6316, 1842965, '47J6yzepsf8', '2016-06-02 22:53:27.210145');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (75, 3373424, 938, 10332, 22622, 15731, '8u0JOQePOx4', '2016-06-02 23:02:57.708126');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (76, 2034445, 10905, 266717, 12102, 454172, 'PtDJr0Vqffg', '2016-06-02 23:02:58.223026');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (77, 1814410, 163, 2221, 1370, 1395, '2K4oJPefBGQ', '2016-06-02 23:02:58.602272');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (78, 635473, 112, 4291, 471, 3335, 'Zc2KJ8cBIgo', '2016-06-02 23:02:59.019040');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (79, 44518, 68, 291, 52, 700459, 'AmkCxCNmoUE', '2016-06-02 23:02:59.502735');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (80, 2385056, 3259, 17840, 6319, 1842968, '47J6yzepsf8', '2016-06-02 23:02:59.906247');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (81, 3374970, 938, 10332, 22624, 15732, '8u0JOQePOx4', '2016-06-02 23:39:41.332105');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (82, 2034445, 10936, 267394, 12184, 454418, 'PtDJr0Vqffg', '2016-06-02 23:39:41.795945');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (83, 1814410, 163, 2222, 1370, 1395, '2K4oJPefBGQ', '2016-06-02 23:39:42.205186');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (84, 646473, 112, 4292, 471, 3336, 'Zc2KJ8cBIgo', '2016-06-02 23:39:42.572185');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (85, 44554, 68, 291, 53, 700467, 'AmkCxCNmoUE', '2016-06-02 23:39:42.952884');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (86, 2404128, 3261, 17841, 6322, 1842984, '47J6yzepsf8', '2016-06-02 23:39:43.322602');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (87, 3374970, 939, 10333, 22625, 15732, '8u0JOQePOx4', '2016-06-03 00:01:03.798479');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (88, 2034445, 10959, 267686, 12218, 454526, 'PtDJr0Vqffg', '2016-06-03 00:01:04.304044');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (89, 1814410, 163, 2222, 1370, 1395, '2K4oJPefBGQ', '2016-06-03 00:01:04.679044');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (90, 646473, 112, 4294, 471, 3336, 'Zc2KJ8cBIgo', '2016-06-03 00:01:05.109795');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (91, 44554, 68, 291, 53, 700471, 'AmkCxCNmoUE', '2016-06-03 00:01:05.513326');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (92, 2404128, 3262, 17841, 6323, 1843002, '47J6yzepsf8', '2016-06-03 00:01:05.917687');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (93, 3376949, 940, 10334, 22625, 15731, '8u0JOQePOx4', '2016-06-03 00:44:10.248587');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (94, 2154897, 11000, 268291, 12278, 454742, 'PtDJr0Vqffg', '2016-06-03 00:44:10.748034');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (95, 1815100, 163, 2222, 1370, 1395, '2K4oJPefBGQ', '2016-06-03 00:44:11.150262');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (96, 657996, 112, 4296, 471, 3337, 'Zc2KJ8cBIgo', '2016-06-03 00:44:11.692850');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (97, 44591, 68, 291, 53, 700485, 'AmkCxCNmoUE', '2016-06-03 00:44:12.144559');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (98, 2428813, 3263, 17844, 6325, 1843026, '47J6yzepsf8', '2016-06-03 00:44:12.605347');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (99, 3376949, 940, 10334, 22626, 15731, '8u0JOQePOx4', '2016-06-03 00:51:20.396366');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (100, 2154897, 11004, 268404, 12286, 454776, 'PtDJr0Vqffg', '2016-06-03 00:51:20.838278');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (101, 1815100, 163, 2222, 1370, 1395, '2K4oJPefBGQ', '2016-06-03 00:51:21.208998');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (102, 665569, 112, 4297, 471, 3337, 'Zc2KJ8cBIgo', '2016-06-03 00:51:21.598858');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (103, 44591, 68, 291, 53, 700485, 'AmkCxCNmoUE', '2016-06-03 00:51:22.036135');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (104, 2442999, 3263, 17845, 6326, 1843029, '47J6yzepsf8', '2016-06-03 00:51:22.422091');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (105, 3378350, 940, 10334, 22627, 15731, '8u0JOQePOx4', '2016-06-03 01:10:47.384774');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (106, 2247390, 11019, 268648, 12309, 454861, 'PtDJr0Vqffg', '2016-06-03 01:10:47.837779');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (107, 1815100, 163, 2222, 1370, 1395, '2K4oJPefBGQ', '2016-06-03 01:10:48.309420');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (108, 665569, 112, 4298, 471, 3337, 'Zc2KJ8cBIgo', '2016-06-03 01:10:48.809118');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (109, 44613, 68, 291, 53, 700490, 'AmkCxCNmoUE', '2016-06-03 01:10:49.217214');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (110, 2442999, 3263, 17845, 6327, 1843043, '47J6yzepsf8', '2016-06-03 01:10:49.675547');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (111, 3379794, 941, 10334, 22628, 15731, '8u0JOQePOx4', '2016-06-03 02:12:54.740087');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (112, 2423291, 11055, 269424, 12376, 455148, 'PtDJr0Vqffg', '2016-06-03 02:12:55.262667');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (113, 1816426, 163, 2222, 1370, 1396, '2K4oJPefBGQ', '2016-06-03 02:12:55.680291');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (114, 680536, 112, 4303, 471, 3339, 'Zc2KJ8cBIgo', '2016-06-03 02:12:56.132036');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (115, 44655, 68, 291, 53, 700503, 'AmkCxCNmoUE', '2016-06-03 02:12:56.554312');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (116, 2451741, 3266, 17850, 6330, 1843083, '47J6yzepsf8', '2016-06-03 02:12:56.979486');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (117, 3385977, 944, 10353, 22660, 15740, '8u0JOQePOx4', '2016-06-03 08:36:41.365667');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (118, 2636413, 11671, 286883, 13491, 462220, 'PtDJr0Vqffg', '2016-06-03 08:36:41.956809');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (119, 1817677, 167, 2227, 1373, 1408, '2K4oJPefBGQ', '2016-06-03 08:36:42.348532');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (120, 695157, 116, 4342, 478, 3358, 'Zc2KJ8cBIgo', '2016-06-03 08:36:42.743985');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (121, 44955, 68, 291, 54, 700623, 'AmkCxCNmoUE', '2016-06-03 08:36:43.177522');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (122, 2492055, 3337, 18056, 6445, 1844614, '47J6yzepsf8', '2016-06-03 08:36:43.621177');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (123, 3385977, 944, 10353, 22660, 15741, '8u0JOQePOx4', '2016-06-03 08:45:59.272097');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (124, 2636413, 11687, 287492, 13524, 462441, 'PtDJr0Vqffg', '2016-06-03 08:46:00.096840');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (125, 1817677, 167, 2227, 1373, 1409, '2K4oJPefBGQ', '2016-06-03 08:46:00.492664');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (126, 695157, 117, 4345, 478, 3358, 'Zc2KJ8cBIgo', '2016-06-03 08:46:00.869635');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (127, 44955, 68, 291, 54, 700626, 'AmkCxCNmoUE', '2016-06-03 08:46:01.235233');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (128, 2492055, 3342, 18061, 6447, 1844667, '47J6yzepsf8', '2016-06-03 08:46:01.610043');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (129, 3385977, 946, 10356, 22666, 15742, '8u0JOQePOx4', '2016-06-03 09:07:10.366789');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (130, 2664681, 11762, 288897, 13621, 462996, 'PtDJr0Vqffg', '2016-06-03 09:07:11.295293');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (131, 1817797, 167, 2227, 1373, 1412, '2K4oJPefBGQ', '2016-06-03 09:07:11.915317');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (132, 696304, 119, 4352, 479, 3358, 'Zc2KJ8cBIgo', '2016-06-03 09:07:12.617106');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (133, 44977, 68, 291, 54, 700634, 'AmkCxCNmoUE', '2016-06-03 09:07:13.267618');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (134, 2501053, 3350, 18072, 6456, 1844780, '47J6yzepsf8', '2016-06-03 09:07:13.794904');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (135, 3386714, 948, 10361, 22676, 15746, '8u0JOQePOx4', '2016-06-03 09:53:35.731665');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (136, 2675207, 11903, 292025, 13812, 464237, 'PtDJr0Vqffg', '2016-06-03 09:53:36.449641');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (137, 1817840, 167, 2227, 1373, 1415, '2K4oJPefBGQ', '2016-06-03 09:53:37.288802');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (138, 696799, 119, 4364, 482, 3360, 'Zc2KJ8cBIgo', '2016-06-03 09:53:37.886630');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (139, 44983, 68, 291, 54, 700644, 'AmkCxCNmoUE', '2016-06-03 09:53:38.498181');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (140, 2504264, 3367, 18108, 6477, 1845046, '47J6yzepsf8', '2016-06-03 09:53:38.981197');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (141, 3387371, 952, 10364, 22692, 15747, '8u0JOQePOx4', '2016-06-03 10:55:46.983431');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (142, 2709670, 12045, 296094, 14074, 465860, 'PtDJr0Vqffg', '2016-06-03 10:55:47.438287');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (143, 1818009, 167, 2229, 1374, 1415, '2K4oJPefBGQ', '2016-06-03 10:55:47.803683');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (144, 698054, 118, 4374, 483, 3364, 'Zc2KJ8cBIgo', '2016-06-03 10:55:48.172096');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (145, 44997, 68, 291, 54, 700661, 'AmkCxCNmoUE', '2016-06-03 10:55:48.550565');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (146, 2514550, 3393, 18153, 6504, 1845379, '47J6yzepsf8', '2016-06-03 10:55:48.927103');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (147, 3387371, 952, 10364, 22697, 15747, '8u0JOQePOx4', '2016-06-03 11:07:43.122125');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (148, 2709670, 12063, 296814, 14125, 466121, 'PtDJr0Vqffg', '2016-06-03 11:07:43.627329');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (149, 1818009, 168, 2230, 1374, 1415, '2K4oJPefBGQ', '2016-06-03 11:07:44.089201');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (150, 698054, 118, 4376, 484, 3364, 'Zc2KJ8cBIgo', '2016-06-03 11:07:44.620275');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (151, 44997, 68, 291, 54, 700663, 'AmkCxCNmoUE', '2016-06-03 11:07:45.007051');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (152, 2514550, 3394, 18160, 6508, 1845441, '47J6yzepsf8', '2016-06-03 11:07:45.412144');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (153, 3387371, 952, 10364, 22697, 15747, '8u0JOQePOx4', '2016-06-03 11:14:31.718136');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (154, 2709670, 12083, 297229, 14154, 466273, 'PtDJr0Vqffg', '2016-06-03 11:14:32.289113');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (155, 1818009, 168, 2231, 1374, 1415, '2K4oJPefBGQ', '2016-06-03 11:14:32.724771');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (156, 698054, 118, 4377, 484, 3364, 'Zc2KJ8cBIgo', '2016-06-03 11:14:33.147194');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (157, 45024, 68, 291, 54, 700666, 'AmkCxCNmoUE', '2016-06-03 11:14:33.590861');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (158, 2514550, 3398, 18161, 6509, 1845473, '47J6yzepsf8', '2016-06-03 11:14:33.988888');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (159, 3387371, 952, 10364, 22699, 15747, '8u0JOQePOx4', '2016-06-03 11:25:46.860361');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (160, 2768009, 12118, 297900, 14186, 466551, 'PtDJr0Vqffg', '2016-06-03 11:25:47.317301');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (161, 1818009, 168, 2231, 1374, 1415, '2K4oJPefBGQ', '2016-06-03 11:25:47.682014');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (162, 700156, 119, 4381, 484, 3364, 'Zc2KJ8cBIgo', '2016-06-03 11:25:48.047071');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (163, 45024, 68, 291, 54, 700670, 'AmkCxCNmoUE', '2016-06-03 11:25:48.414466');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (164, 2514550, 3400, 18171, 6514, 1845533, '47J6yzepsf8', '2016-06-03 11:25:48.779851');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (165, 3389707, 953, 10368, 22712, 15748, '8u0JOQePOx4', '2016-06-03 12:27:13.870429');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (166, 2830767, 12220, 301225, 14426, 467944, 'PtDJr0Vqffg', '2016-06-03 12:27:14.360516');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (167, 1818386, 168, 2232, 1374, 1414, '2K4oJPefBGQ', '2016-06-03 12:27:14.730213');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (168, 702416, 204, 4389, 485, 3365, 'Zc2KJ8cBIgo', '2016-06-03 12:27:15.113009');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (169, 45050, 68, 292, 54, 700674, 'AmkCxCNmoUE', '2016-06-03 12:27:15.495994');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (170, 2546820, 3437, 18216, 6542, 1845884, '47J6yzepsf8', '2016-06-03 12:27:15.875515');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (171, 3389707, 953, 10368, 22712, 15748, '8u0JOQePOx4', '2016-06-03 12:29:34.349382');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (172, 2830767, 12221, 301328, 14431, 467993, 'PtDJr0Vqffg', '2016-06-03 12:29:34.802162');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (173, 1818386, 168, 2232, 1374, 1414, '2K4oJPefBGQ', '2016-06-03 12:29:35.163341');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (174, 702416, 204, 4391, 485, 3365, 'Zc2KJ8cBIgo', '2016-06-03 12:29:35.530441');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (175, 45050, 68, 292, 54, 700675, 'AmkCxCNmoUE', '2016-06-03 12:29:35.912443');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (176, 2546820, 3438, 18216, 6544, 1845897, '47J6yzepsf8', '2016-06-03 12:29:36.289707');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (177, 3389707, 953, 10368, 22712, 15748, '8u0JOQePOx4', '2016-06-03 12:29:44.823026');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (178, 2830767, 12221, 301337, 14431, 467995, 'PtDJr0Vqffg', '2016-06-03 12:29:45.259302');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (179, 1818386, 168, 2232, 1374, 1414, '2K4oJPefBGQ', '2016-06-03 12:29:45.637914');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (180, 702416, 204, 4391, 485, 3365, 'Zc2KJ8cBIgo', '2016-06-03 12:29:45.995134');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (181, 45050, 68, 292, 54, 700675, 'AmkCxCNmoUE', '2016-06-03 12:29:46.362868');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (182, 2546820, 3438, 18216, 6544, 1845899, '47J6yzepsf8', '2016-06-03 12:29:46.747703');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (183, 3389707, 953, 10368, 22712, 15748, '8u0JOQePOx4', '2016-06-03 12:30:07.894532');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (184, 2830767, 12221, 301354, 14431, 468005, 'PtDJr0Vqffg', '2016-06-03 12:30:08.353068');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (185, 1818386, 168, 2232, 1374, 1414, '2K4oJPefBGQ', '2016-06-03 12:30:08.751904');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (186, 702416, 204, 4391, 485, 3365, 'Zc2KJ8cBIgo', '2016-06-03 12:30:09.190398');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (187, 45050, 68, 292, 54, 700676, 'AmkCxCNmoUE', '2016-06-03 12:30:09.585215');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (188, 2546820, 3438, 18216, 6544, 1845898, '47J6yzepsf8', '2016-06-03 12:30:09.967590');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (189, 3389707, 953, 10368, 22712, 15748, '8u0JOQePOx4', '2016-06-03 12:34:33.880724');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (190, 2830767, 12227, 301577, 14451, 468122, 'PtDJr0Vqffg', '2016-06-03 12:34:34.416364');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (191, 1818572, 168, 2232, 1374, 1414, '2K4oJPefBGQ', '2016-06-03 12:34:34.827979');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (192, 702416, 204, 4392, 485, 3365, 'Zc2KJ8cBIgo', '2016-06-03 12:34:35.202982');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (193, 45050, 68, 292, 54, 700675, 'AmkCxCNmoUE', '2016-06-03 12:34:35.606591');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (194, 2546820, 3440, 18217, 6544, 1845926, '47J6yzepsf8', '2016-06-03 12:34:35.989193');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (195, 3389707, 954, 10371, 22717, 15750, '8u0JOQePOx4', '2016-06-03 13:04:08.384821');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (196, 2852305, 12280, 302932, 14558, 468713, 'PtDJr0Vqffg', '2016-06-03 13:04:08.920189');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (197, 1818666, 168, 2233, 1375, 1414, '2K4oJPefBGQ', '2016-06-03 13:04:09.324695');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (198, 703220, 206, 4395, 485, 3368, 'Zc2KJ8cBIgo', '2016-06-03 13:04:09.726651');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (199, 45053, 68, 292, 54, 700661, 'AmkCxCNmoUE', '2016-06-03 13:04:10.119212');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (200, 2552064, 3450, 18230, 6553, 1846072, '47J6yzepsf8', '2016-06-03 13:04:10.552239');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (201, 3391198, 954, 10374, 22720, 15751, '8u0JOQePOx4', '2016-06-03 14:00:04.445400');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (202, 2909686, 12360, 305244, 14771, 469791, 'PtDJr0Vqffg', '2016-06-03 14:00:04.921722');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (203, 1818889, 169, 2234, 1377, 1415, '2K4oJPefBGQ', '2016-06-03 14:00:05.326998');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (204, 705293, 207, 4400, 485, 3368, 'Zc2KJ8cBIgo', '2016-06-03 14:00:05.743573');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (205, 45071, 68, 292, 54, 700663, 'AmkCxCNmoUE', '2016-06-03 14:00:06.129736');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (206, 2565541, 3459, 18264, 6580, 1846398, '47J6yzepsf8', '2016-06-03 14:00:06.534479');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (207, 3391335, 956, 10378, 22725, 15757, '8u0JOQePOx4', '2016-06-03 15:00:01.671536');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (208, 2915086, 12454, 307562, 15009, 470803, 'PtDJr0Vqffg', '2016-06-03 15:00:02.132038');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (209, 1818917, 169, 2236, 1377, 1416, '2K4oJPefBGQ', '2016-06-03 15:00:02.570093');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (210, 705293, 207, 4404, 485, 3368, 'Zc2KJ8cBIgo', '2016-06-03 15:00:02.968332');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (211, 45077, 68, 293, 54, 700675, 'AmkCxCNmoUE', '2016-06-03 15:00:03.480649');
INSERT INTO public.video_statistics (id, video_view_count, video_comment_count, video_like_count, video_dislike_count, channel_subscriber_count, youtube_video_id, time) VALUES (212, 2567274, 3467, 18313, 6616, 1846727, '47J6yzepsf8', '2016-06-03 15:00:03.941055');