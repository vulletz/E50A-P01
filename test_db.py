# test_db.py
import psycopg2
import unittest
import csv
import os

class TestDatabase(unittest.TestCase):
    def setUp(self):
        self.conn = psycopg2.connect(
            dbname="testdb",
            user="postgres",
            password="postgres",
            host="localhost",
            port="5432"
        )
        self.cur = self.conn.cursor()

    def tearDown(self):
        self.cur.close()
        self.conn.close()

    def test_users_table(self):
        self.cur.execute("SELECT * FROM users;")
        rows = self.cur.fetchall()
        self.assertEqual(len(rows), 2)
        self.assertEqual(rows[0][1], 'Alice')
        self.assertEqual(rows[1][1], 'Bob')

        # Write test results to CSV
        with open('test_results.csv', mode='w', newline='') as file:
            writer = csv.writer(file)
            writer.writerow(['Test', 'Result'])
            result_boolean = len(rows) == 2 and rows[0][1] == 'Alice' and rows[1][1] == 'Bob'
            writer.writerow(['test_users_table', 'Passed' if result_boolean else 'Failed'])

if __name__ == '__main__':
    unittest.main()    