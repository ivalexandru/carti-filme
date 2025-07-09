-- no trailing comma, else err!!
-- CREATE TABLE books (
--     name TEXT NOT NULL,
--     rating REAL NOT NULL,
--     author TEXT,
--     genre TEXT,
--     comment TEXT,
--     lists TEXT
-- );

INSERT INTO books (name, rating, author, genre)
VALUES
-- ("Dune", 10, "Frank Herbert", "SF" ),
-- ("Foundation", 9.6, "Isaac Asimov", "SF"),
-- ("2001: A Space Odyssey", 9.7, "Arthur C. Clarke", "SF"),
-- ("The Museum of Innocence", 7.7, "Orhan Pamuk", "novel"),
-- ("Silo (Wool)", 6.6, "Hugh Howey", "SF");



-- CREATE TABLE unfinished_books (
--     name TEXT NOT NULL,
--     rating INTEGER,
--     author TEXT,
--     comment TEXT
-- );

-- INSERT INTO unfinished_books (name, rating, author, comment)
-- VALUES
-- ("The Bastard of Istanbul", 4, "Elif Shafak", 'not for me');


-- display
SELECT * FROM books;
SELECT * FROM unfinished_books;

