import UIKit

//MARK: - DAY_3 - Operators and conditions

//MARK: Arithemetic Operators

let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore
let product = firstScore * secondScore
let divided = firstScore / secondScore
let remainder = 13 % firstScore //13%12=1 r=1
let remainder1 = firstScore % secondScore // 12/4=3 r=0


let value: Double = 90000000000000001
//'90000000000000001' is not exactly representable as 'Double'; it becomes '90000000000000000'

let value1: Int = 90000000000000001

let weeks = 465 / 7
let days = 465 % 7
print("There are \(weeks) weeks and \(days) days until the event.")

let number = 465
let isMultiple = number.isMultiple(of: 7) // is divisible by 7?
// is Multiple (jest wielokrotnością?)

//MARK: Operator overloading

// + sums integers like this:
let meaningOfLine = 42
let doubleMeaning = 42 + 42

// + joins string, like this:
let fakers = "Fakers gonna "
let action = fakers + "fake"

// + joins arrays, like this:
let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

/*
 Remember, Swift is a type-safe language,
 which means it won’t let you mix types.
 */

//MARK: Compound assignment operators

var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

//MARK: Comparison operators

let first = 6
let second = 4

first == second
first != second

first < second
first >= second

"Taylor" <= "Swift"


enum Sizes: Comparable {
    case small
    case medium
    case large
}

let firstSize = Sizes.small
let secondSize = Sizes.large
//That will print “true”, because small comes before large in the enum case list.
print(firstSize < secondSize)

//MARK: Conditions

//if

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

//MARK: Combining conditions

// && (pronounced “and”) and || (pronounced “or”).

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}

//MARK: The ternary operator

print(firstCard == secondCard ? "Cards are the same" : "Cards are different")

if firstCard == secondCard {
    print("Cards are the same")
} else {
    print("Cards are different")
}

//MARK: Switch statements

let weather = "rain"

switch weather {
case "rain":
    print("Bring an umbrella")
    fallthrough
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}

//MARK: Range operators

/* For example, the range 1..<5 contains the numbers 1, 2, 3, and 4, whereas
 the range 1...5 contains the numbers 1, 2, 3, 4, and 5.
 */

let score1 = 85

switch score1 {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}

//MARK: Summarize of day 3 - What have I learned?
/*
1. Swift has operators for doing arithmetic and for comparison; they mostly work like you already know.
2. There are compound variants of arithmetic operators that modify their variables in place: +=, -=, and so on.
3. You can use if, else, and else if to run code based on the result of a condition.
4. Swift has a ternary operator that combines a check with true and false code blocks. Although you might see it in other code, I wouldn’t recommend using it yourself.
5. If you have multiple conditions using the same value, it’s often clearer to use switch instead.
6. You can make ranges using ..< and ... depending on whether the last number should be excluded or included.
*/
