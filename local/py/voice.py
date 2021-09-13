words = input("Say something!\n").lower()

if "hello" in words:
	print("Hello to you too!")
elif "how are you" in words:
	print("I'm well, thanks!")
elif "bye" in words:
	print("Goodbye!")
else:
	print("Huh....")
