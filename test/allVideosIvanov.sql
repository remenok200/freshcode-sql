SELECT videos.caption,
    users.nickname,
    users.id
FROM users
    JOIN videos ON users.id = videos.userid
WHERE users.id = 2;