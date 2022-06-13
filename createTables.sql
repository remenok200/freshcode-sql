CREATE TABLE users(
    id serial PRIMARY KEY,
    nickname VARCHAR(30) NOT NULL CHECK (nickname != ''),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE videos(
    id SERIAL PRIMARY KEY,
    caption VARCHAR(64) NOT NULL,
    user_id INT NOT NULL REFERENCES users(id)
);

CREATE TABLE marks(
    id SERIAL,
    video_id INT REFERENCES videos(id),
    user_id INT REFERENCES users(id),
    isLike bool NOT NULL DEFAULT FALSE,
    PRIMARY KEY (video_id, user_id)
);

CREATE TABLE comments(
    id SERIAL PRIMARY KEY,
    video_id INT NOT NULL REFERENCES videos(id),
    user_id INT NOT NULL REFERENCES users(id),
    message_text TEXT NOT NULL,
    reply_to INT REFERENCES comments
);