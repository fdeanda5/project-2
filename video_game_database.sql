DROP DATABASE IF EXISTS VideoGameDB;
CREATE DATABASE VideoGameDB;
USE VideoGameDB;

CREATE TABLE Player (
    PlayerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Username VARCHAR(50) NOT NULL
);

CREATE TABLE Game (
    GameID INT PRIMARY KEY AUTO_INCREMENT,
    GameName VARCHAR(100) NOT NULL,
    Genre VARCHAR(50),
    ReleaseYear INT
);

CREATE TABLE Score (
    ScoreID INT PRIMARY KEY AUTO_INCREMENT,
    PlayerID INT NOT NULL,
    GameID INT NOT NULL,
    Points INT NOT NULL,
    DatePlayed DATE NOT NULL,

    CONSTRAINT fk_score_player
        FOREIGN KEY (PlayerID)
        REFERENCES Player(PlayerID),

    CONSTRAINT fk_score_game
        FOREIGN KEY (GameID)
        REFERENCES Game(GameID)
);
