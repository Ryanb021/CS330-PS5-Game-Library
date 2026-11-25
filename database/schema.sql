CREATE DATABASE IF NOT EXISTS ps5_game_library;

USE ps5_game_library;
-- Week 7: Create tables for players, games, games_library

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

-- Week 8: Game progress table
CREATE TABLE game_progress (
    id INTEGER PRIMARY KEY,
    player_id INTEGER,
    game_id INTEGER,
    completion INTEGER,
    FOREIGN KEY (player_id) REFERENCES players(id),
    FOREIGN KEY (game_id) REFERENCES games(id)
);

-- Trophies table
CREATE TABLE trophies (
    id INTEGER PRIMARY KEY,
    game_id INTEGER,
    name TEXT NOT NULL,
    type TEXT NOT NULL,
    FOREIGN KEY (game_id) REFERENCES games(id)
);

-- Player trophies junction table
CREATE TABLE player_trophies (
    player_id INTEGER,
    trophy_id INTEGER,
    date_earned TEXT,
    PRIMARY KEY (player_id, trophy_id),
    FOREIGN KEY (player_id) REFERENCES players(id),
    FOREIGN KEY (trophy_id) REFERENCES trophies(id)
);
SHOW TABLES;