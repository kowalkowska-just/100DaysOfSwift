import UIKit

//MARK: - DAY 1

//Varibles

var greeting = "Hello, playground"
greeting = "Goodbay"

//String and integers

var str = "Hello, playground"
var age = 38
var population = 8_000_000

//Multi-line strings

var str1 = """
This goes
over multiple
lines
"""

print(str1)

var str2 = """
This goes \
over multiple \
lines
"""

print(str2)

//Doubles and booleans

var pi = 3.141
var awesome = true

var myInt = 1
var myDouble = 1.1

// var total = myInt + myDouble
// błąd nie można dodawać dwóch różnych zmiennych.

//String interpolation

var score = 85
var strStore = "Your score was \(score)"
var results = "The test results are here: \(strStore)"

//Constants

let taylor = "Swift"

//Type annotations

let str3 = "Hello"
let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true
