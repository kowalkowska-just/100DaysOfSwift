import UIKit

//MARK: - Using closures as parameters when they accept parameters.

func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}


//MARK: - Using closures as parameters when they return values.

func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

//MARK: - Shorthand parameter names.

travel { place -> String in
    return "I'm going to \(place) in my car"
}

travel { place in
    return "I'm going to \(place) in my car"
}

travel { place in
    "I'm going to \(place) in my car"
}

travel {
    "I'm going to \($0) in my car"
}

//MARK: - Closures with multiple parameters.

func travel(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel {
    "I'm going to \($0) at \($1) miles per hour."
}

//MARK: - Returning closures from functions.

func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel()
result("London")

// \/ It is really not recommended - to call the return value from travel() directly.
let result2 = travel()("London")


//MARK: - Capturing values.

func travel1() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let result1 = travel1()
result("London1")
