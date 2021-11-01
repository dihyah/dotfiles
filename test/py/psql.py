#!/usr/bin/python3 

import psycopg2

""" Connect to the PostgreSQL database server """
print("Connecting to the PostgreSQL database...")
conn = psycopg2.connect(dbname="mydb")

#create a cursor
cur = conn.cursor()

#execute a statement
print("PostgreSQL database version:")
cur.execute("SELECT VERSION()")
version = cur.fetchone()

#display the PostgreSQL database server version
print(version)

#close the communication with the PostgreSQL
cur.close()
conn.close()
print("Database connection close")

