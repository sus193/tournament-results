-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

-- Clean up the database to remove previous tournament records
DROP TABLE players CASCADE;
DROP TABLE matches CASCADE;
DROP VIEW matchresults;

-- Players table stores the name and id for each player in the tournament
-- Column: player_name is the name of the player
-- Column: player_id is the id of the player
CREATE TABLE players(
	playername varchar(100), 
	playerid serial, 
	primary key(playerid)
);

-- Matches table stores the winner_id and loser_id for each match played in the tournament
-- Column: winner_id is the id of the winner player
-- Column: loser_id is the id of the loser player
CREATE TABLE matches(
	winnerid int references players(playerid), 
	loserid int references players(playerid)
);

-- Matchresults view stores each player's results from all matches
-- Column: id is the id of the player
-- Column: name is the name of the player
-- Column: playerWins is the number of wins by this player
-- Column: playerLosses is the number of losses by this player
-- Column: playerMatches is the number of matches played by this player
CREATE VIEW matchresults AS	
	SELECT players.playerid as id, 
	players.playername as name, 
		(SELECT count(*)
		 FROM matches 
		 WHERE matches.winnerid = players.playerid) as playerwins,
		(SELECT count(*)
		 FROM matches 
		 WHERE matches.loserid = players.playerid) as playerlosses,
		(SELECT count(*)
		 FROM matches
		 WHERE players.playerid = matches.winnerid OR players.playerid = matches.loserid) as playermatches
	FROM players 
	ORDER BY playerwins DESC, playerlosses ASC;

