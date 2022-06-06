-- Creating tables for NFL_PredictDB
CREATE TABLE teams (
	team_name VARCHAR(20) NOT NULL,
	div VARCHAR(3) NOT NULL,
	team_id VARCHAR(6) NOT NULL,
	PRIMARY KEY (team_id),
	UNIQUE (team_name,team_id)
);

CREATE TABLE standings(
	team_id VARCHAR(6) NOT NULL,
	wins_2021 VARCHAR(6) NOT NULL,
	losses_2021 VARCHAR(6) NOT NULL,
	win_pct_2021 VARCHAR(6) NOT NULL,
	wins_2020 VARCHAR(6) NOT NULL,
	losses_2020 VARCHAR(6) NOT NULL,
	win_pct_2020 VARCHAR(6) NOT NULL,
	wins_2019 VARCHAR(6) NOT NULL,
	losses_2019 VARCHAR(6) NOT NULL,
	win_pct_2019 VARCHAR(6) NOT NULL,
	FOREIGN KEY (team_id) REFERENCES teams(team_id),
	PRIMARY KEY (team_id)
);

CREATE TABLE team_sales(
	team_id VARCHAR(6) NOT NULL,
	pct_2021 VARCHAR(6) NOT NULL,
	pct_2020 VARCHAR(6) NOT NULL,
	pct_2019 VARCHAR(6) NOT NULL,
	FOREIGN KEY (team_id) REFERENCES teams(team_id),
	PRIMARY KEY (team_id)
);

CREATE TABLE team_ratings (
	team_id VARCHAR(6) NOT NULL,
	qbr_2021 VARCHAR(5) NOT NULL,
	qbr_2020 VARCHAR(5)NOT NULL,
	qbr_2019 VARCHAR(5)NOT NULL,
	off_ranking_2021 VARCHAR(5) NOT NULL,
	off_ranking_2020 VARCHAR(5) NOT NULL,
	off_ranking_2019 VARCHAR(5) NOT NULL,
	def_ranking_2021 VARCHAR(5) NOT NULL,
	def_ranking_2020 VARCHAR(5) NOT NULL,
	def_ranking_2019 VARCHAR(5) NOT NULL,
	coach_rtn_2021 VARCHAR(1) NOT NULL,
	coach_rtn_2020 VARCHAR(1) NOT NULL,
	coach_rtn_2019 VARCHAR(1) NOT NULL
);

-- Join 'standings' table with 'teams' table
SELECT teams.team_id,standings.wins_2021, standings.losses_2021,standings.win_pct_2021,
standings.wins_2020, standings.losses_2020,standings.win_pct_2020,
standings.wins_2019, standings.losses_2019,standings.win_pct_2019
INTO team_standings
FROM teams
INNER JOIN standings
ON teams.team_id = standings.team_id;
