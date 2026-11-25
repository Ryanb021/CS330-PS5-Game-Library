
USE ps5_game_library;

-- Add 3 players
INSERT INTO players (id, username, email)
VALUES
(1, 'Alex', 'alex@example.com'),
(2, 'Jordan', 'jordan@example.com'),
(3, 'Taylor', 'taylor@example.com');

-- Add 4 PS5 games
INSERT INTO games (id, title, genre, price)
VALUES
(1, 'God of War Ragnarok', 'Action', 69.99),
(2, 'Spider-Man 2', 'Action', 69.99),
(3, 'Astro Bot', 'Platformer', 59.99),
(4, 'Horizon Forbidden West', 'Adventure', 49.99);

-- Add games to players' libraries
INSERT INTO game_library (player_id, game_id, purchase_date)
VALUES
(1, 1, '2026-01-10'),
(1, 2, '2026-02-15'),
(2, 3, '2026-03-20'),
(3, 4, '2026-04-05');

-- Week 8: Insert game progress
INSERT INTO game_progress
    (id, player_id, game_id, completion)
VALUES
    (1, 1, 1, 75),
    (2, 1, 2, 100),
    (3, 2, 3, 50),
    (4, 3, 4, 25);

-- Insert trophies
INSERT INTO trophies
    (id, game_id, name, type)
VALUES
    (1, 1, 'First Victory', 'Bronze'),
    (2, 1, 'Game Master', 'Gold'),
    (3, 2, 'Ultimate Hero', 'Platinum'),
    (4, 3, 'First Adventure', 'Silver'),
    (5, 4, 'Explorer', 'Bronze');

-- Insert earned trophies
INSERT INTO player_trophies
    (player_id, trophy_id, date_earned)
VALUES
    (1, 1, '2026-01-15'),
    (1, 3, '2026-02-20'),
    (2, 4, '2026-03-25'),
    (3, 5, '2026-04-10');