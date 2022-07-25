DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.Subscription(
    subscription_id INT PRIMARY KEY AUTO_INCREMENT,
    subscription_name VARCHAR(50) NOT NULL,
    subscription VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.Users(
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    user_age INT NOT NULL,
    user_name VARCHAR(50) NOT NULL,
    subscription_date DATETIME NOT NULL,
	FOREIGN KEY(subscription_id) REFERENCES Subscription (subscription_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.Artist(
    artist_id INT PRIMARY KEY AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.Following(
    follow_id INT PRIMARY KEY AUTO_INCREMENT,
    FOREIGN KEY(artist_id) REFERENCES Artist (artist_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.Album(
    album_id INT PRIMARY KEY AUTO_INCREMENT,
	album_name VARCHAR(50) NOT NULL,
    release_year INT NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.Songs(
    song_id INT PRIMARY KEY AUTO_INCREMENT,
	song_name VARCHAR(50) NOT NULL,
    duration INT NOT NULL,
    FOREIGN KEY(artist_id) REFERENCES Artist (artist_id),
    FOREIGN KEY(album_id) REFERENCES Album (album_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.Reproductions(
    reproduction_id INT PRIMARY KEY AUTO_INCREMENT,
	reproduction_date DATETIME NOT NULL,
    FOREIGN KEY(user_id) REFERENCES Users (user_id),
    FOREIGN KEY(song_id) REFERENCES Songs (song_id)
) engine = InnoDB;
