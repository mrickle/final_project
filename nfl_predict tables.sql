-- Creating tables for NFL_PredictDB
CREATE TABLE teams (
	team_name VARCHAR(20) NOT NULL,
	div VARCHAR(3) NOT NULL,
	team_id VARCHAR(6) NOT NULL,
	PRIMARY KEY (team_id),
	UNIQUE (team_name,team_id)
);

CREATE TABLE coach_rtrn (
	team_id VARCHAR(6) NOT NULL,
	team_name VARCHAR(20) NOT NULL,
	coach_2020 VARCHAR(40) NOT NULL,
	coach_2021 VARCHAR(40) NOT NULL,
	FOREIGN KEY (team_id) REFERENCES teams(team_id),
	PRIMARY KEY (team_id)
	
);

CREATE TABLE nfc_standings (
	team_id VARCHAR(6) NOT NULL,
	team_name VARCHAR(20) NOT NULL,
	wins INT NOT NULL,
	losses INT NOT NULL,
	win_pct VARCHAR(5),
	FOREIGN KEY (team_id) REFERENCES teams(team_id),
	PRIMARY KEY (team_id)
);

CREATE TABLE team_rating (
	team_id VARCHAR(6) NOT NULL,
	team_name VARCHAR(20) NOT NULL,
	off_rate VARCHAR(5) NOT NULL,
	def_rate VARCHAR(5) NOT NULL,
	FOREIGN KEY (team_id) REFERENCES teams(team_id),
	PRIMARY KEY (team_id)
);

CREATE TABLE sales (
	team_id VARCHAR(6) NOT NULL,
	team_name VARCHAR(20) NOT NULL,
	sell_out_rate VARCHAR(10),
	FOREIGN KEY (team_id) REFERENCES teams(team_id),
	PRIMARY KEY (team_id)
);

CREATE TABLE qbr_table (
	team_id VARCHAR(6) NOT NULL,
	team_name VARCHAR(20) NOT NULL,
	qbr_average VARCHAR(5),
	FOREIGN KEY (team_id) REFERENCES teams(team_id),
	PRIMARY KEY (team_id)
);
	
SELECT * FROM nfc_standings;

-- Join 'standings' table with 'sales' table
SELECT nfc_standings.team_id, nfc_standings.team_name, nfc_standings.win_pct,sales.sell_out_rate
INTO wins_and_sales
FROM nfc_standings
INNER JOIN sales
ON sales.team_id = nfc_standings.team_id
ORDER BY win_pct
