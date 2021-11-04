import csv
import sqlite3
from time import sleep

#creates an empty shows.db
open("shows.db", 'w').close()

#opens the file for sqlite
db = sqlite3.connect("shows.db")
cur = db.cursor()

#creates tables
cur.execute("CREATE TABLE shows (id INT, title TEXT, Year NUMERIC, PRIMARY KEY(ID))")

#The genre table will have a column called "show_id" that references the shows table above
cur.execute("CREATE TABLE genres (show_id INT, genre TEXT, FOREIGN KEY(show_id) REFERENCES shows(id))")

#open TSV (https://datasets.imdbws.com/title.basics.tsv.gs)
with open("title.basics.tsv", 'r') as titles:

    #create DictReader 
    reader = csv.DictReader(titles, delimiter='\t')

    print("Importing tsv data to db...")
    for row in reader:
        if row["startYear"] == '\\N':
            continue

        startYear = int(row["startYear"])
        if startYear < 1970:
            continue
        
        if row["titleType"] == "tvSeries":

            #Trim prefix from tconst
            id = int(row["tconst"] [2:])

            #Insert show
            db.execute("INSERT INTO shows (id, title, Year) VALUES(?, ?, ?)", (id, row["primaryTitle"], startYear))

            #Insert genres
            if row["genres"] != '\\N':
                for genre in row["genres"].split(','):
                    db.execute("INSERT INTO genres (show_id, genre) VALUES(?, ?)", (id, genre))

    db.commit()
    print("Complete!")
