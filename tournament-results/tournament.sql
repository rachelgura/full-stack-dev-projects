-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.



--create the database
DROP DATABASE tournament;
CREATE DATABASE tournament;

--connect to database
\c tournament

--create the tournament table
CREATE TABLE tournament (
  tournament_id SERIAL PRIMARY KEY, tournament_name TEXT
);

-- create the players table
CREATE TABLE players (
  player_id SERIAL PRIMARY KEY, player_name TEXT, total_wins INTEGER NOT NULL DEFAULT 0,
  total_losses INTEGER NOT NULL DEFAULT 0, total_matches INTEGER NOT NULL DEFAULT 0
);

--create tournament register
CREATE TABLE tournament_register (
  register_id SERIAL PRIMARY KEY,
  tournament_id INTEGER NOT NULL REFERENCES tournament(tournament_id),
  entrant_id INTEGER NOT NULL REFERENCES players(player_id),
  wins INTEGER NOT NULL DEFAULT 0,
  matches INTEGER NOT NULL DEFAULT 0
);

--create the matches table
CREATE TABLE matches (
  match_id SERIAL PRIMARY KEY,
  --tournament_id INTEGER NOT NULL REFERENCES tournament(tournament_id),
  winner INTEGER references players(player_id), 
  loser INTEGER references players(player_id)
);
