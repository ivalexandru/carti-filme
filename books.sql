BEGIN;
CREATE TABLE books (id, year, list_all_genres, list_specific_genre, finished, book_name, author, genre, comment);
INSERT INTO books VALUES (1, 1965, "top_100_all_time", "top_100_SF", "yes", "Dune", "Frank Herbert", "SF", "amazing");
INSERT INTO books VALUES (2, 1951, "top_100_all_time", "top_100_SF", "yes", "Foundation", "Isaac Asimov", "SF", "amazing");
INSERT INTO books VALUES (3, 1968, "top_100_all_time", "top_100_SF", "yes", "2001: A Space Odyssey", "Arthur C. Clarke", "SF", "amazing");
INSERT INTO books VALUES (4, 2006, "not_for_me", "not_for_me", "no", "The Bastard of Istanbul", "Elif Shafak", "novel", "not for me");
INSERT INTO books VALUES (5, 2008, "romance_ish", "love_but_twisted", "no", "The Museum of Innocence", "Orhan Pamuk", "novel", "good");
COMMIT;





