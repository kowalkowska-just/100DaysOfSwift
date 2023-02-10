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
