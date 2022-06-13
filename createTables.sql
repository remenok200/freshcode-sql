CREATE TABLE users(
    id serial PRIMARY KEY,
    nickname VARCHAR(30) NOT NULL CHECK (nickname != ''),
    createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE videos(
    id SERIAL PRIMARY KEY,
    caption VARCHAR(64) NOT NULL,
    userID INT NOT NULL REFERENCES users(id)
);

CREATE TABLE likes(
    id SERIAL,
    videoID INT NOT NULL REFERENCES videos(id),
    userID INT NOT NULL REFERENCES users(id),
    PRIMARY KEY (videoID, userID)
);

CREATE TABLE comments(
    id SERIAL PRIMARY KEY,
    videoID INT NOT NULL REFERENCES videos(id),
    userID INT NOT NULL REFERENCES users(id),
    messageText TEXT NOT NULL,
    replyTo INT REFERENCES comments
);