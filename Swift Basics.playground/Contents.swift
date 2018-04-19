//: Playground - noun: a place where people can play

import UIKit

//Variables are ALWAYS initialized in declaration
//Hence they are nil safe
var a:Int = 0

//When initializing, type can be infered by the value.
//Hence type is not compulsory
var b = 5

//Default is double
var c1 = 5.0

//You can manually give it a type float
var c2: Float = 5.0

//If you do not want to initalize a variable, you can mark it as optional
//It must have a type followed by a '?'
var d: Int?   // defaults to nil
d = nil

//Note: '!' sign here is used for forced unwrapping
if(d! > 10)
{
    print ("D is greater than 10")
}

//Nil-Coalescing Operator

//The nil-coalescing operator (a ?? b) unwraps an optional a if it contains a value, or returns a default value b if a is nil. The expression a is always of an optional type. The expression b must match the type that is stored inside a.

//The nil-coalescing operator is shorthand for the code below:

//a != nil ? a! : b

let defaultColorName = "red"
var userDefinedColorName: String?   // defaults to nil

var colorNameToUse = userDefinedColorName ?? defaultColorName



//Constants can be declared by 'let'
let e1 = 1
let e2: Int = 1
let e3: Int?
e3 = 1

//e3 is Constant But Optional. And its not been initialised. Hence swift allows it to be initialised exactly once. As we had initialized e3 above, un-commenting the below line will throw an error
//e3 = 2    this will give an error as cannot mutate constant



//Ternary Conditional Operator
let myName = "swift"
myName == "swift" ? true : false

//Unary Minus Operator
//The sign of a numeric value can be toggled using a prefixed -, known as the unary minus operator:
let three = 3;
let minusThree = -three
let plusThree = -minusThree


//Unary Plus Operator
//The unary plus operator (+) simply returns the value it operates on, without any change:

let minusSix = -6
let alsoMinusSix = +minusSix  // alsoMinusSix equals -6


//Compound Assignment Operators
var f = 100
f+=10


//Tuples
let (x, y) = (10.12,20.34)
print("Tuple: x = "+String(x)+" y = "+String(y))

//Tuples Comparison
//You can compare two tuples if they have the same type and the same number of values. Tuples are compared from left to right, one value at a time, until the comparison finds two values that aren’t equal. Those two values are compared, and the result of that comparison determines the overall result of the tuple comparison. If all the elements are equal, then the tuples themselves are equal. For example:

(1, "zebra") < (2, "apple")   // true because 1 is less than 2; "zebra" and "apple" are not compared
(3, "apple") < (3, "bird")    // true because 3 is equal to 3, and "apple" is less than "bird"
(4, "dog") == (4, "dog")      // true because 4 is equal to 4, and "dog" is equal to "dog"


//("blue", false) < ("purple", true)  // Error because < can't compare Boolean values


