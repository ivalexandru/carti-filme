BEGIN;
CREATE TABLE books_db (id, year, list_all_genres, list_specific_genre, list_MVP, finished, book_name, author, genre, comment);
INSERT INTO books_db VALUES (1, 1965, "top_100_all", "top_100_SF", "special_ones", "yes", "Dune", "Frank Herbert", "SF", "amazing");
INSERT INTO books_db VALUES (2, 1951, "top_100_all", "top_100_SF", "special_ones", "yes", "Foundation", "Isaac Asimov", "SF", "amazing");
COMMIT;