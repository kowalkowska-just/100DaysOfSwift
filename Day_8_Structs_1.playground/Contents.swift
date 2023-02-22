import UIKit

//MARK: - Creating struct

struct Sport {
    var name: String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)

tennis.name = "Lawn tennis"

print(tennis.name)
