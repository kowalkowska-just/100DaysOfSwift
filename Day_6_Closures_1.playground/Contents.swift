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

