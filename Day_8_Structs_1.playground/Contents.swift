import UIKit

//MARK: - Creating struct

//struct Sport {
//    var name: String
//}

var tennis = Sport(name: "Tennis")
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

