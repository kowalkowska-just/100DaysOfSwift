import UIKit
import Darwin

//MARK: - DAY_2 - Complex data types.

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

//Arrays

let beatles = [john, paul, george, ringo]

//Elementy w tablicy liczy się od zera.
beatles[1] //Paul McCartney

//beatles[8] Błąd: Element o indexie 8 nie istnieje. Tablica Beatles ma elementy o indexach 0-3.

let emptyArray: [Double] = []
let emptyArray1 = [Double]()
let emotyArray2 = Array<Int>()

//Sets
/*
 Set to kolekcje wartości, podobnie jak w tablicy, z wyjątkiem tego,
 że wartości nie są przechowywane w żadnej kolejności, są przechowywane w kolejności losowej.
 Wszystkie elementy muszą być niepowtarzalne.
 */

let colors = Set(["red", "green", "blue"]) //{"blue", "red", "green"}
let colors2 = Set(["red", "green", "blue", "red", "blue"]) //{"red", "green", "blue"}

let emptySet = Set<String>()
let emptySet1 = Set<Int>()

//Tuples - krotki
/*
 Krotki umożliwiają przechowowywanie kilku wartości razem w jednej zmiennej.
 Nie można dodawać, ani usuwać elementów krotki; mają stały rozmiar.
 Nie można zmieniać typu elementów w krotce, zawsze mają te same typy, z którymi zostały stworzone.
 */

var name = (first: "Taylor", last: "Swift")
name.0
name.first

var tuples = (name: "Justyna", age: 27, isMarried: false)

//Dictonaries

let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

heights["Taylor Swift"]

let numbers = [
    1: "One",
    2: "Two",
    3: "Three"
]

numbers[1]

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

favoriteIceCream["Paul"]
favoriteIceCream["Charlotte", default: "Unknown"]

var dictionary = [String: String]()
dictionary["Paul"] = "Red"

let emptyDictionary = Dictionary<String, Int>()


//Enumerations

enum Result {
    case success
    case failure
}

let result1 = Result.success

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case sining(volume: Int)
}

let talking = Activity.talking(topic: "football")

enum Planet: Int {
    case mercury // = 1
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2)
