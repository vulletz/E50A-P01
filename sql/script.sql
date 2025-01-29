/* 
TABLE: users
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE
*/
CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE    
    );

/*
VALUES:
('Alice', 'alice@example.com'),
('Bob', 'bob@example.com');
*/
INSERT INTO users VALUES
('Alice', 'alice@example.com'),
('Bob', 'bob@example.com');
