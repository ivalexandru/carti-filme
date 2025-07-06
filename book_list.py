import sqlite3

# poti incarca si scripturi sql
# fisiere de forma ceva.sql (vezi fisier ceva.sql)
# daca ai in script 'COMMIT' la final, nu mai e nevoie sa pui commit in py!?

conn = sqlite3.connect("books_db.db")
cur = conn.cursor()

# load script
with open("/Users/alexiv/Documents/code_2025/python_all/python_filme_carti/books.sql") as file:
    sql_script = file.read()

# execute script
cur.executescript(sql_script)
# NO NEED TO COMMIT HERE PT CA
# AI PUS IN SCRIPTUL SQL la final COMMIT;


# display data
member_data = cur.execute("SELECT * FROM books_db ORDER BY book_name")
for row in member_data:
    print(row)
# member_data si cur sunt acelasi obj (same mem aadr)
# de ce? pt ca metoda execute returneaza -> Cursor
# aka poti face for row in cur si rezultatul e acelasi
# dar asa pare mai curat

cur.close()
conn.close()




# map sqlite types to py types:
# sqlite   python
# integer  int
# real     float
# text     string
# blob     bytes
# null     none