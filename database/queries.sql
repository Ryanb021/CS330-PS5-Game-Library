USE ps5_game_library;

-- WEEK 7 QUERIES

-- DISPLAY ALL PLAYERS
SELECT * FROM players;

-- DISPLAY ALL GAMES
SELECT * FROM games;

-- DISPLAY ALL PLAYER LIBRARIES
SELECT * FROM game_library;

-- WEEK 8 QUERIES

-- DISPLAY ALL GAME PROGRESS
SELECT * FROM game_progress;

-- DISPLAY ALL TROPHIES
SELECT * FROM trophies;

-- DISPLAY ALL PLAYER TROPHIES
SELECT * FROM player_trophies;

-- Week 8: Correct trophy name (mispelled Victory)
UPDATE trophies
SET name = 'First Victory'
WHERE id = 1;

SELECT * FROM trophies
WHERE id = 1;

-- Week 8: Add a temporary trophy
INSERT INTO trophies (id, game_id, name, type)
VALUES (6, 1, 'Test Trophy', 'Bronze');

SELECT * FROM trophies;

-- Week 8: Delete temp trophy
DELETE FROM trophies
WHERE id = 6;

-- Week 8: INNER JOIN practice: Player game progress
SELECT players.username, games.title, game_progress.completion
FROM game_progress
INNER JOIN players ON game_progress.player_id = players.id
INNER JOIN games ON game_progress.game_id = games.id;

-- INNER JOIN practice: Player game libraries
SELECT players.username, games.title, game_library.purchase_date
FROM game_library
INNER JOIN players ON game_library.player_id = players.id
INNER JOIN games ON game_library.game_id = games.id;

-- LEFT JOIN practice: All trophies
SELECT trophies.name, trophies.type, players.username
FROM trophies
LEFT JOIN player_trophies ON trophies.id = player_trophies.trophy_id
LEFT JOIN players ON player_trophies.player_id = players.id;

-- Week 8: Display unearned trophies
SELECT trophies.name, trophies.type
FROM trophies
LEFT JOIN player_trophies ON trophies.id = player_trophies.trophy_id
WHERE player_trophies.trophy_id IS NULL;