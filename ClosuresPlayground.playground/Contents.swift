//: Playground - noun: a place where people can play.
//Here we are going to play with Closures.

import UIKit

func calculator(n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(n1,n2)
}


//With a function as an argument
func add(n1: Int, n2: Int) -> Int {
    return n1 + n2
}
calculator(n1: 15, n2: 15, operation: add)


//Doing same with closures
calculator(n1: 10, n2: 20, operation: {
    (a: Int, b: Int) -> Int in
    return a+b
})

//As swift has the ability to infer data types
//From calculators defination it inferes that it wants (Int, Int) -> Int
calculator(n1: 10, n2: 20, operation: {
    (a, b) -> Int in
    return a+b
})

//Swift can infer that the function has to return something, so in case of SINGLE LINE EXPRESSION
//we can directly write the expression to return
calculator(n1: 10, n2: 20, operation: {
    a, b in
    a+b
})

//We the the arguments go nameless and simply returned the expression
calculator(n1: 10, n2: 20, operation: {$0 + $1})

//If last argument is an closure, then we can ommit () brackets.
calculator(n1: 10, n2: 20) {$0 + $1}



