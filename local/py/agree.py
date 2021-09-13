import re

s = raw_input("Do you agree?")

#restricting user's input
if re.search("^y(es)?$", s, re.IGNORECASE):
	print("Agreed.")
elif re.search("^n(o)?$", s, re.IGNORECASE):
	print("Disagreed.")
