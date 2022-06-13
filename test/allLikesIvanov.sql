SELECT users.nickname,
    users.id,
    videos.caption,
    likes.id
FROM videos
    JOIN (
        users
        JOIN likes ON users.id = likes.userid
    ) ON videos.id = likes.videoid
WHERE users.id = 2;