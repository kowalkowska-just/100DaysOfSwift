import UIKit

var greeting = "Hello, playground"

//MARK: - Loops, loops, and more loops.

//MARK:  FOR LOOPS
//for numbers
let count = 1 ... 7

for number in count {
    print ("\(number)")
}

//for String
let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music.")
}

print("Player gonna.")
for _ in 1 ... 5 {
    print("play")
}

//MARK: WHILE LOOPS
//While - give it a condition to check, and its loop code will go around and around until the condition fails.
var number = 1
while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")

//MARK: REPEAT LOOPS
//Repeat - because the condition comes at the end of the repeat loop the code inside the loop will always be executed at least once.

repeat {
    print(number)
    number += 1
} while number <= 20

print ("Ready or not, here I come!")

//for example: below loops will never be executed.

while false {
    print("This is false.")
}

//but this will be run once, because repeat only fails the condition after the loop runs.

repeat {
    print("This is false.")
} while false

//MARK: EXITING LOOPS

