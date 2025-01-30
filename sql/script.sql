
-- create
CREATE TABLE USERS (
  id SERIAL UNIQUE PRIMARY KEY,
  name varchar(100) NOT NULL,
  email varchar(100) NOT NULL
);

-- insert
INSERT INTO USERS (name, email) VALUES ('Alice', 'alice@example.com');
INSERT INTO USERS (name, email) VALUES ('Bob', 'bob@example.com');

-- fetch 
SELECT * FROM USERS;
