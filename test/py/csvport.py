import csv

#open CSV file for reading
with open("title.basics.tsv", 'r') as titles:
    
    #since the file is TSV file, we can use the CSV reader and change the seperator to a tab.
    reader = csv.DictReader(titles, delimiter='\t')

    #open new CSV file for writing
    with open("shows.csv", 'w') as shows:

        #Create writer
        writer = csv.writer(shows)

        #Writes header of the column we want
        writer.writerow(["tconst", "primaryTitle", "startYear", "genres"])

        print("Importing...")
        #Iterates over TSV file
        for row in reader:

            #If year is missing
            if row["startYear"] == '\\N':
                continue

            #If less than 1970
            year = int(row["startYear"]) 
            if year < 1970:
                continue

            #If non-adult TV show
            if row["titleType"] == "tvSeries" and row["isAdult"] == '0':
                #Write row
                writer.writerow([row["tconst"], row["primaryTitle"], row["startYear"], row["genres"]])

        print("Complete."
