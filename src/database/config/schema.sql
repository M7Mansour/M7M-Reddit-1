BEGIN;

DROP TABLE IF EXISTS POSTS_LIKES;
DROP TABLE IF EXISTS COMMINTS;
DROP TABLE IF EXISTS POSTS;
DROP TABLE IF EXISTS USERS;

CREATE TABLE IF NOT EXISTS USERS (
    ID SERIAL PRIMARY KEY,
    USERNAME VARCHAR(30) UNIQUE NOT NULL,
    EMAIL VARCHAR(320) UNIQUE NOT NULL,
    FIRST_NAME VARCHAR(30) NOT NULL,
    LAST_NAME VARCHAR(30) NOT NULL,
    PASSWORD TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS POSTS (
    ID SERIAL PRIMARY KEY,
    "OWNER" INTEGER REFERENCES USERS(ID) ON DELETE CASCADE NOT NULL,
    "TYPE" TEXT NOT NULL,
    CATEGORY TEXT NOT NULL,
    TITLE TEXT NOT NULL,
    CONTENT TEXT,
    POST_TIME TIMESTAMP NOT NULL,
    VIEWS INTEGER DEFAULT 0
);

CREATE TABLE IF NOT EXISTS COMMINTS (
    ID SERIAL PRIMARY KEY,
    "OWNER" INTEGER REFERENCES USERS(ID) ON DELETE CASCADE NOT NULL,
    POST INTEGER REFERENCES POSTS(ID) ON DELETE CASCADE NOT NULL,
    COMMINT_TIME TIMESTAMP NOT NULL
);

CREATE TABLE IF NOT EXISTS POSTS_LIKES (
    "OWNER" INTEGER REFERENCES USERS(ID) ON DELETE CASCADE NOT NULL,
    POST INTEGER REFERENCES POSTS(ID) ON DELETE CASCADE NOT NULL,
    VOTE_TYPE INTEGER NOT NULL,
    PRIMARY KEY("OWNER", POST)
);

COMMIT;