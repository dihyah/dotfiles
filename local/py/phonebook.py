from sys import exit

people = {
	"EMMA": "617-555-0100",
	"RODRIGO": "617-555-0101",
	"BRIAN": "617-555-0102",
	"DAVID": "617-555-0103",
}

if "DAVID" in people:
	print("found "+ people['DAVID'])
	exit(0)
print("not found...")
