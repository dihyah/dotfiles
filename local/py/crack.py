from string import ascii_letters
from itertools import product
from time import sleep

for passcode in product(ascii_letters, repeat=8):
    print(*passcode)
    #sleep(.5)
