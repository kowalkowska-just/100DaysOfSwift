import UIKit

//MARK: - Functions

/* Swift functions start with the func keyword, then your function name, then open and close parentheses. All the body of your function – the code that should be run when the function is requested – is placed inside braces.
*/

func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""

    print(message)
}
printHelp()

// MARK: - Parameters
/* For example, we can write a function to print the square of any number:
 */

func square(number: Int) {
    print(number * number)
}

square(number: 5)

//MARK: - Returning values
/* As well as receiving data, functions can also send back data. To do this, write a dash then a right angle bracket after your function’s parameter list, then tell Swift what kind of data will be returned.
 
 Inside your function, you use the return keyword to send a value back if you have one. Your function then immediately exits, sending back that value – no other code from that function will be run. */
 
 func squareReturn(number: Int) -> Int {
    return number * number
}

let result = squareReturn(number: 8)
print(result)


