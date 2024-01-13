DROP DATABASE IF EXISTS soccer_league;

CREATE DATABASE soccer_league;

\c soccer_league 

CREATE TABLE teams
(
    id SERIAL PRIMARY KEY,
    name text
);  

CREATE TABLE players 
(
    id SERIAL PRIMARY KEY,
    name TEXT,
    team_id SERIAL REFERENCES teams
);

CREATE TABLE referees 
(
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE season  
(
    id SERIAL PRIMARY KEY,
    start_date DATE,
    end_date DATE
);

CREATE TABLE matches 
(
    id SERIAL PRIMARY KEY,
    location TEXT,
    date DATE,
    referees_id SERIAL REFERENCES referees,
    season_id SERIAL REFERENCES season
);

CREATE TABLE standings
(
    id SERIAL PRIMARY KEY,
    result TEXT,
    team_id SERIAL REFERENCES teams,
    match_id SERIAL REFERENCES matches
);

CREATE TABLE goals
(
    id SERIAL PRIMARY KEY,
    player_id SERIAL REFERENCES players,
    match_id SERIAL REFERENCES matches
);

INSERT INTO teams 
    (name)
VALUES
    ('Lions');

INSERT INTO players 
    (name)
VALUES
    ('Brad');

INSERT INTO referees
    (name)
VALUES
    ('Nick');

INSERT INTO season
    (start_date, end_date)
VALUES
    ('10-20-2009', '1-20-2010');

INSERT INTO matches
    (location, date)
VALUES
    ('Texas', '11-2-2009');

INSERT INTO standings
    (result)
VALUES
    ('Win');