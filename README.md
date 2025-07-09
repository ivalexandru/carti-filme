# carti-filme
notes from the underground 


uncomment .sql file that you want to update
run this cmd: 
sqlite3 databaseName.db < fileName.sql









0.   comenzi utile





1.   create new database

2.  create tabel
2a.  tipuri de campuri date / elemente din tabel

3.   add data to table

4.   modifici continut db existenta cu fisier.sql
4a.  folosind ">"



0.   comenzi utile
.schema
.tables
drop table nume; -sterge tabel





SINGLE VS DOUBLE QUOTES:
single quotes = string variables
SELECT * FROM users WHERE name = 'John Doe';

Double quotes are used for identifiers (table names, column names) when they:
Contain spaces
Are reserved keywords
Have special characters
Are case-sensitive
CREATE TABLE "user data" (
    "user id" INTEGER,
    "last-name" TEXT
);

-- Wrong: double quotes for string values
SELECT * FROM users WHERE name = "John";  -- This looks for a column named 'John'

-- Wrong: single quotes for identifiers
SELECT 'first name' FROM users;  -- This returns the literal string 'first name'







1.   create new database

sqlite3 nume.db
(pana nu adaugi si tabel nu iti apare?)




2.  create table

imediat ce creezi db poti da comanda de tabel nou
CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT NOT NULL,
    email TEXT UNIQUE
);


sau poti alege o db deja existenta in care sa creezi tabel:
sqlite3 path/to/existing_database.db

daca e in acelasi dir
sqlite3 myapp.db

daca vrei sa desschizi in read-only mode:
sqlite3 -readonly myapp.db




2a.  tipuri de campuri date / elemente din tabel
not null = required
unique = nu pot fi 2 la fel
poti avea mai multe: fara virgula intre ele

DATETIME DEFAULT CURRENT_TIMESTAMP






2c.  alter / modify / delete existing table content

ALTER TABLE users ADD COLUMN status TEXT;

stergi toata coloana:
ALTER TABLE users DROP COLUMN phone;


stergi o singura inregistrare:
DELETE FROM users WHERE id = 5;
sau
DELETE FROM users WHERE name = 'John Doe';

modifici o singura inregistrare (nu toata coloana):
UPDATE users SET email = "ceva@gmail.com' WHERE id = 1;


3.   add data to table

INSERT INTO users (username, email) VALUES ('john_doe', 'john@example.com');





4.   modifici continut db existenta cu fisier.sql

4a.  folosind ">"
sqlite3 myapp.db < fisier.sql 
< redirecteaza continutul din fisier.sql 


exemplu de fisier .sql:
-- Create a table
CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT UNIQUE
);

-- Insert some data
--v1 (nu recomand)
INSERT INTO users (name, email) VALUES ('John Doe', 'john@example.com');

--v2
INSERT INTO users (name, email) 
VALUES ('Jane Smith', 'jane@example.com');


-- Create another table
CREATE TABLE orders (
    id INTEGER PRIMARY KEY,
    user_id INTEGER,
    product TEXT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Query the data
SELECT * FROM users;

