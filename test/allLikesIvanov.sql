SELECT users.nickname,
    users.id,
    videos.caption,
    marks.id
FROM videos
    JOIN (
        users
        JOIN marks ON users.id = marks.user_id
    ) ON videos.id = marks.video_id
WHERE users.id = 2;