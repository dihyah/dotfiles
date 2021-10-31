import csv

search = input("Title: ")

with open("shows.csv", 'r') as file:
    reader = csv.DictReader(file)
    
    for row in reader:
        if search == row["primaryTitle"]:
            print(row["primaryTitle"], row["startYear"])
