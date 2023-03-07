import UIKit

//MARK: - Initializers

struct User {
    var username: String
}

var user = User(username: "twostraws")

/* We can provide our own initializer to replace the default one. For example, we might want to create all new users as “Anonymous” and print a message, like this: */

struct User1 {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user1 = User1()
print(user1)
user1.username = "twostraws"
print(user1)

//MARK: How do Swift’s memberwise initializers work?

struct Employee {
    var name: String
    var yearsActive = 0
}

struct Employee1 {
    var name: String
    var yearsActive = 0

    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee…")
    }
}

struct Employee2 {
    var name: String
    var yearsActive = 0
}

extension Employee2 {
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee…")
    }
}

// creating a named employee now works
let roslin3 = Employee2(name: "Laura Roslin")

// as does creating an anonymous employee
let anon = Employee2()

//MARK: - Referring to the current instance.

/* For example, if you create a Person struct with a name property, then tried to write an initializer that accepted a name parameter, self helps you distinguish between the property and the parameter – self.name refers to the property, whereas name refers to the parameter. */

struct Person {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

var person = Person(name: "Juliusz")
print(person)

//MARK: - Lazy properties.

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person1 {
    var name: String
    var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var ed = Person1(name: "Ed")

//lazy var familyTree = FamilyTree()

ed.familyTree

//MARK: - Static properties and methods.

struct Studnet {
    static var classSize = 0
    var name: String
    
    init(name: String) {
        self.name = name
        Studnet.classSize += 1
    }
}

let lola = Studnet(name: "Lola")
let taylor = Studnet(name: "Taylor")

print(Studnet.classSize)
