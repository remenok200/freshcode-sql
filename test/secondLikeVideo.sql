-- !!! This query checks if it is possible to give two likes to the same video from the same user.
-- !!! If all is well, then this query should return an duplicate key error.

INSERT INTO likes(video_id, user_id)
VALUES (1, 2);