CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    full_name VARCHAR,
    phone_num VARCHAR,
    e_mail VARCHAR,
    movie_title VARCHAR
);

SELECT *
FROM customer;

CREATE TABLE ticket (
    ticket_num SERIAL PRIMARY KEY,
    movie_id INTEGER,
    movie_title VARCHAR,
    full_name VARCHAR
);

SELECT *
FROM ticket;

CREATE TABLE movie (
    movie_id SERIAL PRIMARY KEY,
    movie_title VARCHAR,
    FOREIGN KEY(movie_title) REFERENCES ticket(movie_title),
    rating INTEGER,
    movie_duration INTEGER,
    customer_id INTEGER,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
    ticket_num INTEGER,
    FOREIGN KEY(ticket_num) REFERENCES ticket(ticket_num),
    food_id INTEGER,
    FOREIGN KEY(food_id) REFERENCES concessions(food_id)
);

CREATE TABLE concessions (
    food_id SERIAL PRIMARY KEY,
    drink_id INTEGER,
    full_name VARCHAR,
    quantity INTEGER
);

SELECT *
FROM concessions;