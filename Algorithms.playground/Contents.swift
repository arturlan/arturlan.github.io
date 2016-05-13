//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var array = [5, 6, 3, 7, 9, 2, 5]

array.insert(11, atIndex: 3)

array.removeAtIndex(3)


let numbersInArray = [4, 7, 22, 11, 89, 40, 59, 93, 36]
var score = 0
for x in numbersInArray {
    if x > 30 {
        score += 3
    } else {
        score -= 2
    }
}
print(score)



var optionalName: String? = "Artur Lan"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

var optionalHello: String? = "Hello"
if let hello = optionalHello where hello.hasPrefix("H"), let name = optionalName {
    greeting = "\(hello), \(name)"
}



let vegetable = "red pepper"
switch vegetable {
case "celery":
    let vegetableComment = "Add some raisins and make ants on a log."
case "cucumber", "watercress":
    let vegetableComment = "That would make a good tea sandwich."
case let x where x.hasSuffix("pepper"):
    let vegetableComment = "Is it a spicy \(x)?"
default:
    let vegetableComment = "Everything tastes good in soup."
}