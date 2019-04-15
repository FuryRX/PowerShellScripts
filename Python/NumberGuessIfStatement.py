import random
print("What is your name!")

name = input()
secretNumber = random.randint(1,20)

print('Hello! ' + name + ' Guess what number i am thinking of?')

for guessesTaken in range(1,7):
    print("Take a guess?")
    guess = int(input())
    if guess > secretNumber:
        print("Number is too High!")
    elif guess < secretNumber:
            print("Numer is too Low!")
    else:
            break
if guess == secretNumber:
    print("Good job " + name + "!"+ " You guessed my number " + str(secretNumber))
else:
    print("Nope i was thinking of" + str(secretNumber))
