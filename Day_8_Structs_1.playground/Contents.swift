import UIKit

//MARK: - Creating struct

//struct Sport {
//    var name: String
//}

var tennis = Sport(name: "Tennis", isOlympicSport: true)
print(tennis.name)

tennis.name = "Lawn tennis"

print(tennis.name)

//MARK: - Diffrence between a struct and a tuple.

struct User {
    var name: String
    var age: Int
    var city: String
}

// using a struct in function
func authenticate(_ user: User) { }
func showProfile(for user: User) { }
func signOut(_ user: User) { }


//using a tuple in function
func authenticate(_ user: (name: String, age: Int, city: String)) { }
func showProfile(for user: (name: String, age: Int, city: String)) { }
func signOut(_ user: (name: String, age: Int, city: String)) { }

//MARK: - Computed properties

struct Sport {
    var name: String
    var isOlympicSport: Bool

    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = Sport(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

//MARK: - Property observers.

struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        } // didSet wykonuje się za każdym razem gdy wartość amount się zmieni.
          // willSet wykonuje się za każdym razem przed zmianą właściwości.
    }
}

//MARK: - Methods

struct City {
    var population: Int

    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 9_000_000)
print(london.collectTaxes())
print(london)
