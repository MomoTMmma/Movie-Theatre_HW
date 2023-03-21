-- INSERT VALUES INTO MY TABLES START WITH CUSTOMER END WITH TRANSACTIONS

INSERT INTO customer(
    first_name,
    last_name
) VALUES (
    'Melissa',
    'DeWeese'
), (
    'April',
    'Gonzales'
)
SELECT * FROM customer;

INSERT INTO concessions(
    food_name,
    c_description,
    price
) VALUES (
    'Popcorn',
    'Popcorn is a variety of corn kernel which expands and puffs up when heated the same names also refer to the foodstuff produced by the expansion.',
    10.99
), (
    'Nachos',
    'plural nachos. a tortilla chip topped with melted cheese and often additional savory toppings such as hot peppers or refried beans',
    15.99
);
SELECT * FROM concessions

INSERT INTO tickets(
    ticket_name,
    theater_name
) VALUES(
    'John Wick',
    'Regal'
), (
    'Star Wars',
    'LOOK Cinemas'
)
SELECT * FROM tickets


INSERT INTO movies(
    movie_name,
    actors_id,
    ticket_id
) VALUES(
    -- 'Coco',
    -- 'Benjamin Bratt',
    -- 2
    -- Here I messed up. 
    'Coco',
    45,
    2
)

SELECT * FROM movies

INSERT INTO transactions(
    ticket_id,
    concessions_id,
    customer_id
) VALUES(
    1,
    2,
    1
)
SELECT * FROM transactions