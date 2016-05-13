//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)


var stepNum = 0
func tryStep() -> Bool {
    let success = Int(arc4random_uniform(2)) > 0
    if (success) {
        stepNum++
        print("Yay! \(stepNum)")
    } else {
        stepNum--;
        print("Ow!  \(stepNum)")
    }
    return success
}

let fib_sec = [1, 1, 2, 3, 5, 8, 13]

func fib(n: Int) -> Int {
    print("X")
    
    if (n == 0 || n == 1) {
        return 1
    }
    return fib(n - 1) + fib(n - 2)
}

fib(8)


var cache = [Int: Int]()

cache[0] = 1
cache[1] = 2

func fibd(n: Int) -> Int {
    print("X")
    if cache[n] != nil {
        return cache[n]!
    }
    let value = fib(n - 1) + fib(n - 2)
    cache[n] = value
    return value
}

