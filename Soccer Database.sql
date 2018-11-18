DROP DATABASE Soccer;
CREATE DATABASE Soccer;
USE Soccer;

CREATE TABLE Team(
country VARCHAR(255) PRIMARY KEY NOT NULL,
UNIQUE KEY country_UNIQUE (country),
matches_played int,
wins int,
draws int,
losses int,
points_per_game int,
performance_rank int,
goals_scored int,
goals_conceded int,
goal_difference int

);

CREATE TABLE Players(
players_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
full_name VARCHAR(255) NOT NULL,
age INT,
`position` VARCHAR(255),
minutes_played_overall INT,
nationality VARCHAR(255),
appearances_overall int,
goals_overall int,
assists_overall int,
yellow_cards_overall int,
red_cards_overall int,
rank_in_league_top_attackers int,
rank_in_league_top_midfielders int,
rank_in_league_top_defenders int,
rank_in_club_top_scorer int,
FOREIGN KEY (nationality)
        REFERENCES Team(country)
        ON DELETE CASCADE,
        
KEY `players_fk1` (`nationality`),
    CONSTRAINT `players_fk1` FOREIGN KEY (`nationality`) REFERENCES `Team` (`country`) ON DELETE CASCADE
    
);
SELECT * FROM Team;

SELECT * FROM Team t JOIN Players p ON t.country = p.nationality;

