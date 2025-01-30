
-- create
CREATE TABLE USERS (
  id SERIAL UNIQUE PRIMARY KEY,
  name varchar(100) NOT NULL,
  email varchar(100) NOT NULL
);

CREATE INDEX users_idx_name ON USERS(name);

-- insert
INSERT INTO USERS (name, email) VALUES ('Alice', 'alice@example.com');
INSERT INTO USERS (name, email) VALUES ('Bob', 'bob@example.com');

-- fetch 
SELECT * FROM USERS;

SELECT * FROM USERS WHERE id = 2;
