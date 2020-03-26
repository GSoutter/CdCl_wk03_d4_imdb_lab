DROP TABLE castings;
DROP TABLE stars;
DROP TABLE movies;


CREATE TABLE stars (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255)
);

CREATE TABLE movies(
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  genre VARCHAR(255)
);

CREATE TABLE castings (
  id SERIAL PRIMARY KEY,
  id_stars INT REFERENCES stars(id) ON DELETE CASCADE,
  id_movies INT REFERENCES movies(id) ON DELETE CASCADE,
  fee DECIMAL 
);
