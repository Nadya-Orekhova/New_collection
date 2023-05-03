CREATE TABLE IF NOT EXISTS Genre (
		id SERIAL PRIMARY KEY,
		name VARCHAR (100) UNIQUE
);

CREATE TABLE IF NOT EXISTS Performer (
		id SERIAL PRIMARY KEY,
		name VARCHAR (100) NOT NULL
);

CREATE TABLE IF NOT EXISTS GenrePerformer (
		genre_id INTEGER REFERENCES Genre(id),
		performer_id INTEGER REFERENCES Performer(id),
		CONSTRAINT gp PRIMARY KEY (genre_id, performer_id)
);

CREATE TABLE IF NOT EXISTS Album (
		id SERIAL PRIMARY KEY,
		name VARCHAR (100) NOT NULL,
		year_of_issue INTEGER 
);

CREATE TABLE IF NOT EXISTS PerformerAlbum (
		performer_id INTEGER REFERENCES Performer(id),
		album_id INTEGER REFERENCES Album(id),
		CONSTRAINT pa PRIMARY KEY (performer_id, album_id)
);

CREATE TABLE IF NOT EXISTS Track (
		id SERIAL PRIMARY KEY,
		album_id INTEGER NOT NULL REFERENCES Album(id),
		name VARCHAR (100) NOT NULL,
		duration INTEGER 
);

CREATE TABLE IF NOT EXISTS Collection (
		id SERIAL PRIMARY KEY,
		name VARCHAR (100) NOT NULL,
		year_of_issue INTEGER
);

CREATE TABLE IF NOT EXISTS TrackCollection (
		track_id INTEGER REFERENCES Track(id),
		collection_id INTEGER REFERENCES collection(id),
		CONSTRAINT tc PRIMARY KEY (track_id, collection_id)
);
