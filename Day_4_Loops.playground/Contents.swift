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

//MARK: EXITING LOOPS - BREAK

var countDown = 10

while countDown >= 0 {
    print(countDown)
    countDown -= 1
}

print("Blast off!")

while countDown >= 0 {
    print(countDown)
    
    if countDown == 4 {
        print("I'm bored. Let's go now")
        break // exit the function
    }
}

//MARK: - EXITING MULTIPLE LOOPS
/* If you put a loop inside a loop it’s called a nested loop, and it’s not uncommon to want to break out of both the inner loop and the outer loop at the same time.
*/


outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")
    }
}

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")
        
        if product == 50 {
            print("It's a bullseye")
            break outerLoop
        }
    }
}

//MARK: - Skipping items - CONTINUE
/* As you’ve seen, the break keyword exits a loop. But if you just want to skip the current item and continue on to the next one, you should use continue instead.
 */

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }

    print(i)
}

//MARK: - INFINITE LOOPS
/* It’s common to use while loops to make infinite loops: loops that either have no end or only end when you’re ready. All apps on your iPhone use infinite loops, because they start running, then continually watch for events until you choose to quit them.
 
 To make an infinite loop, just use true as your condition. true is always true, so the loop will repeat forever. Warning: Please make sure you have a check that exits your loop, otherwise it will never end.
 */

var counter = 0

while true {
    print(" ")
    counter += 1

    if counter == 273 {
        print("break")
        break
    }
}

//MARK: - Random numbers (shuffled numbers)

let numbers = [1, 2, 3, 4, 5]
var random: [Int]

repeat {
    random = numbers.shuffled()
} while random == numbers

print(random)

//MARK: - Why does Swift have labeled statements?
/* With that small change, those three loops stop running as soon as the combination is found. In this trivial case it’s unlikely to make a performance difference, but what if your items had hundreds or even thousands of items?
 */

let options = ["up", "down", "left", "right"]
let secretCombination = ["up", "up", "right"]

outerLoop: for option1 in options {
    for option2 in options {
        for option3 in options {
            print("In loop")
            let attempt = [option1, option2, option3]

            if attempt == secretCombination {
                print("The combination is \(attempt)!")
                break outerLoop
            }
        }
    }
}
