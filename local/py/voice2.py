import speech_recognition

recognizer = speech_recognition.Recognizer()
with speech_recognition.Microphone() as source:
	print("Say something!")
	audio = recognizer.listen(source)

print("Google Speech Recognition think you said:")
print(recognizer.recognize_google(audio))
