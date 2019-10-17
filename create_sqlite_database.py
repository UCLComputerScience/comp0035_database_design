import sqlite3
from os.path import join, dirname, abspath
from sqlite3 import Error


def create_connection(db_file):
    """ create a database connection to a SQLite database """
    conn = None
    try:
        conn = sqlite3.connect(db_file)
    except Error as e:
        print(e)
    finally:
        if conn:
            conn.close()


if __name__ == '__main__':
    current_dir = dirname(abspath(__file__))
    create_connection(join(current_dir, 'new_db.sqlite'))
