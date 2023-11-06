CREATE TABLE customer(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
)

CREATE TABLE ticket (
    id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(id),
)

CREATE TABLE movie (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    genre VARCHAR(255),\
    FOREIGN KEY (movie_id) REFERENCES movie(id),
)
CREATE TABLE customer_order (
    id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(id),   
)
CREATE TABLE order_info (
    order_id INTEGER,
    FOREIGN KEY (order_id) REFERENCES customer_order(id),
    consession INTEGER,
    FOREIGN KEY (consession) REFERENCES consession(id),
)
CREATE TABLE consession (
    id SERIAL PRIMARY KEY,
    FOREIGN KEY (consession) REFERENCES order_info(consession),
    name VARCHAR(255),
    description VARCHAR(255),
)
