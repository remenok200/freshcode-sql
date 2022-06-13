INSERT INTO users (nickname)
VALUES ('Borovik'),
    ('Ivanov'),
    ('Petrov'),
    ('Sidorov'),
    ('Kazanov');
    
INSERT INTO videos (caption, user_id)
VALUES ('Маляр', 1),
    ('Смола', 1),
    ('Рука', 2),
    ('Нога', 2),
    ('Рот', 3),
    ('Уши', 3),
    ('Нос', 1),
    ('Живот', 2),
    ('Укулеле', 3),
    ('Дрова', 2);

INSERT INTO marks(video_id, user_id, isLike)
VALUES (1, 2, false),
    (3, 2, true),
    (5, 2, false),
    (8, 1, true),
    (10, 2, true);

INSERT INTO comments(video_id, user_id, message_text, reply_to)
VALUES (1, 1, 'Mess 1', null),
    (3, 2, 'Mess 2', null),
    (7, 3, 'Mess 3', null),
    (5, 4, 'Mess 4', null),
    (6, 4, 'Mess 5', 4),
    (9, 3, 'Mess 6', 4),
    (9, 2, 'Mess 7', 4);