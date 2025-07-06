BEGIN;
CREATE TABLE books (id, year, finished, book_name, author, genre, comment, list_all_genres, list_specific_genre);
INSERT INTO books VALUES (1, 1965, "yes", "Dune", "Frank Herbert", "SF", "amazing", "top_100_all_time", "top_100_SF");
INSERT INTO books VALUES (2, 1951, "yes", "Foundation", "Isaac Asimov", "SF", "amazing", "top_100_all_time", "top_100_SF");
INSERT INTO books VALUES (3, 1968, "yes", "2001: A Space Odyssey", "Arthur C. Clarke", "SF", "amazing", "top_100_all_time", "top_100_SF");
INSERT INTO books VALUES (4, 2006, "no", "The Bastard of Istanbul", "Elif Shafak", "novel", "not for me", "not_for_me", "not_for_me");
INSERT INTO books VALUES (5, 2008, "yes", "The Museum of Innocence", "Orhan Pamuk", "novel", "good", "romance_ish", "love_but_twisted");
COMMIT;





