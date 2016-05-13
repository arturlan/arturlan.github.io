//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
protocol MapProtocol {
    typealias KeyType
    typealias ValueType
    subscript(k: KeyType) -> ValueType? {get set}
    mutating func remove(k: KeyType)
}

var a = "Cool"
var b = "Shit"

var tuple = (a, b)

swap(&a, &b)

[a, b]

func showTipAdvice(restaurantTotal restaurantTotal: Double, rating: Int, restaurantName: String?) {
//    let tip = calculatedTipOnTotal(restaurantTotal, withRating: 3)
    if let restaurant = computer {
    print("My computer is Macbook")
    }
    print("On my bill of $\(restaurantTotal), you should leave a tp of $tip")
}

var computer: String?

//computer = "MacBook"





showTipAdvice(restaurantTotal: 65, rating: 5, restaurantName: computer)


func h(arrayX: [Int], _ arrayY: [Int])->Int {
    for i in 0..<arrayX.count {
        for j in 0..<arrayY.count {
            return i + j
        }
    }
    return 0
}

func iterativeFuncRecursive(characterArray: [String]) -> Int {
    var counterRecursive = 0
    func simpleFunc(characteArray: [String]) -> Bool {
            let rest = characterArray.dropFirst()
            if characterArray[0] == "a" {
                counterRecursive += 1
                simpleFunc(Array(rest)) }
            else if characterArray[0] == " " {
                counterRecursive -= 5
                simpleFunc(Array(rest)) }
            return false
    }
    func sum(characterArray: [String]) -> Int { return 1 }
    return counterRecursive
}