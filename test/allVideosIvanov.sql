SELECT videos.caption,
    users.nickname,
    users.id
FROM users
    JOIN videos ON users.id = videos.user_id
WHERE users.id = 2;