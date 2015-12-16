CREATE SCHEMA IF NOT EXISTS leaguedb;
USE leaguedb;

CREATE TABLE Users(id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
Nickname VARCHAR(15) NOT NULL,
Position ENUM('top', 'mid', 'jungle', 'support', 'adc') NOT NULL,
Region ENUM('EUW', 'EUNE', 'NA', 'KR') NOT NULL,
League ENUM('Unranked', 'Bronze', 'Silver', 'Gold', 'Platinum', 'Diamond', 'Master', 'Challenger')
);

CREATE TABLE RankedMatchesStats(id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
UserId INTEGER NOT NULL,
FOREIGN KEY (UserId) REFERENCES Users(id),
Total INTEGER,
Wins INTEGER,
Losses INTEGER,
Win_percent FLOAT
);

CREATE TABLE Champions(id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
Name VARCHAR(25) NOT NULL
);

CREATE TABLE RankedChampionStats(id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
UserId INTEGER NOT NULL,
FOREIGN KEY(UserId) REFERENCES Users(id),
ChampionsId INTEGER NOT NULL,
FOREIGN KEY(ChampionsId) REFERENCES Champions(id),
Total INTEGER,
Wins INTEGER,
Losses INTEGER,
Win_percent FLOAT,
Killspergame FLOAT,
Deathspergame FLOAT,
Assistspergame FLOAT,
KDA FLOAT
);