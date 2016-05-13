//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func sum(xs: [Int]) -> Int {
    guard let x = xs.first else {
        return 0
    }
    return x + sum(Array(xs.dropFirst()))
}
let someNumbers = [1, 4, 5, 6, 7, 8, 9, 11]
sum(someNumbers)


func contains(xs: [Int], y: [Int]) -> Bool {
    guard let x = xs.first else {
        return false
    }
    if x == y {
        return true
    }
    return contains(Array(xs.dropFirst()), y)
}



func factorial(x: Int) -> Int {
    if x == 0 {
        return 1
    } else {
        return x * factorial(x - 1)
    }
}

factorial(20)


func factorialTail(x: Int) -> Int {
    
}

