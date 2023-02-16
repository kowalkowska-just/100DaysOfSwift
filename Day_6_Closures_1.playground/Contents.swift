import UIKit

//MARK: - Creating basic closures.

let driving = {
    print("I'm driving in my car")
}

/* That effectively creates a function without a name, and assigns that function to driving. You can now call driving() as if it were a regular function, like this: */

driving()

//MARK: - Accepting partameters in a closure.

let driving1 = { (place: String) in
    print("I'm going to \(place) in my car")
}
driving1("London")

/* To make a closure accept parameters, list them inside parentheses just after the opening brace, then write in so that Swift knows the main body of the closure is starting. */

//MARK: - Returning values from a closure.

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message)

//MARK: - Closures as parameters in methods.

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: driving)

