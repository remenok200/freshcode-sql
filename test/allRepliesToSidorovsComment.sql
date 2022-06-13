SELECT users.nickname,
    videos.caption,
    comments.messagetext,
    comments.replyto
FROM videos
    JOIN (
        users
        JOIN comments ON users.id = comments.userid
    ) ON videos.id = comments.videoid
WHERE users.id = 4 -- на всякий случай показываю и тот коммент, на который отвечают
    OR comments.replyto = 4;