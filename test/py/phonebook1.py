import csv

name = raw_input('Name: ')
number = raw_input('Number: ')

with open("phonebook.csv", "a") as file:
	write = csv.writer(file)
	write.writerow((name, number))
