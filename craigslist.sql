DROP DATABASE IF EXISTS craigslist;

CREATE DATABASE craigslist;

\c craigslist 

CREATE TABLE region
(
    id SERIAL PRIMARY KEY,
    name text
);  

CREATE TABLE users
(
    id SERIAL PRIMARY KEY,
    name VARCHAR,
    password VARCHAR,
    prefered_region TEXT
);

CREATE TABLE categories
(
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE posts
(
    id SERIAL PRIMARY KEY,
    title VARCHAR,
    description VARCHAR,
    user_id SERIAL REFERENCES users,
    region_id SERIAL REFERENCES region,
    categories_id SERIAL REFERENCES categories 
);

INSERT INTO region 
    (name)
VALUES
    ('California');

INSERT INTO users
    (name, password, prefered_region)
VALUES
    ('Tom123', 'asdfadsf', 'California');

INSERT INTO categories
    (name)
VALUES
    ('Comedy');

INSERT INTO posts
    (title, description)
VALUES
    ('Funny Cat', 'Cat acting funny.');