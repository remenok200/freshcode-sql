SELECT users.nickname,
    videos.caption,
    comments.message_text,
    comments.reply_to
FROM videos
    JOIN (
        users
        JOIN comments ON users.id = comments.user_id
    ) ON videos.id = comments.video_id
WHERE users.id = 4 -- на всякий случай показываю и тот коммент, на который отвечают
    OR comments.reply_to = 4;