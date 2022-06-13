INSERT INTO users (nickname)
VALUES ('Borovik'),
    ('Ivanov'),
    ('Petrov'),
    ('Sidorov'),
    ('Kazanov');
    
INSERT INTO videos (caption, userID)
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

INSERT INTO likes(videoID, userID)
VALUES (1, 2),
    (3, 2),
    (5, 2),
    (8, 1),
    (10, 2);

INSERT INTO comments(videoID, userID, messageText, replyTo)
VALUES (1, 1, 'Mess 1', null),
    (3, 2, 'Mess 2', null),
    (7, 3, 'Mess 3', null),
    (5, 4, 'Mess 4', null),
    (6, 4, 'Mess 5', 4),
    (9, 3, 'Mess 6', 4),
    (9, 2, 'Mess 7', 4);