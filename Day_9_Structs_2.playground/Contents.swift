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

