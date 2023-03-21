-- CREATE CUSTOMER TABLE
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
)

SELECT * FROM customer;

-- CREATE CONCESSIONS TABLE
CREATE TABLE concessions(
    concessions_id SERIAL PRIMARY KEY,
    food_name VARCHAR(100),
    c_description VARCHAR,
    price INTEGER NOT NULL
)

SELECT * FROM concessions;

-- CREATE TICKETS TABLE
CREATE TABLE tickets(
    ticket_id SERIAL PRIMARY KEY,
    ticket_name VARCHAR,
    theater_name VARCHAR(100)
)

SELECT * FROM tickets 

-- CREATE MOVIES TABLE
CREATE TABLE movies(
    movies_id SERIAL PRIMARY KEY,
    movie_name VARCHAR(100),
    actors_id INTEGER NOT NULL, -- I MESSED UP HERE I WAS GOING TO GO BACK AND FIX IT BUT FORGOT TO BEFORE I RAN THE QUIERY.
    -- I MEANT TO PUT 'actors_name VARCHAR(100)' I DID TRY FIXING IT BUT IT WAS TO LATE BECUASE I RAN THE QUIERY. THIS MISTAKE IS ALSO ON MY CHART.
    ticket_id INTEGER NOT NULL,
    FOREIGN KEY (ticket_id) REFERENCES tickets(ticket_id)
)

SELECT * FROM movies

-- CREATE TRANSACTIONS TABLE
CREATE TABLE transactions(
    transactions_id SERIAL PRIMARY KEY,
    ticket_id INTEGER NOT NULL,
    concessions_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (ticket_id) REFERENCES tickets(ticket_id),
    FOREIGN KEY (concessions_id) REFERENCES concessions(concessions_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
)

SELECT * FROM transactions;