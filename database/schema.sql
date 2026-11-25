CREATE DATABASE IF NOT EXISTS ps5_game_library;

USE ps5_game_library;

-- Players table
CREATE TABLE players (
    id INTEGER PRIMARY KEY,
    username TEXT NOT NULL,
    email TEXT NOT NULL,
    UNIQUE(email(100))
);

-- Games table
CREATE TABLE games (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    genre TEXT,
    price DECIMAL(6, 2)
);

-- Library junction table
CREATE TABLE game_library (
    player_id INTEGER,
    game_id INTEGER,
    purchase_date TEXT,
    PRIMARY KEY (player_id, game_id),
    FOREIGN KEY (player_id) REFERENCES players(id),
    FOREIGN KEY (game_id) REFERENCES games(id)
);

SHOW TABLES;