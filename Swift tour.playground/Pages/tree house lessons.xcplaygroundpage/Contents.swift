//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)


var isRaining: Bool = true
var isSnowing: Bool = false

if isRaining || isSnowing {
    print("Today is a bad weather")
    
}

var results: [Int] = []

for n in 1...100 {
    if n % 2 != 0 && n % 7 == 0 {
        results.append(n)
        
        print(results)
    }
}


let airportCodes = ["LGA", "LHR", "CDG", "JFK"]



for airportCode in airportCodes {
    switch airportCode {
    case "LGA", "JFK": print("New York")
    case "LHR": print("London")
    case "CDG": print("Paris")
    default: print("I don't know which city this airport is in")
    }
}


import Foundation

var randomTempreture = Int(arc4random_uniform(UInt32(150)))

switch randomTempreture {
case 0..<32: print("Forget clothes, you're basically a posicle")
case 32...45: print("It's a quite cold")
case 45..<75: print("It's a bit chilly.")
case 70...100: print("It's a quite hot")
default: print("My face is melting")
}



var europeanCapitals: [String] = []
var asianCapitals: [String] = []
var otherCapitals: [String] = []

let world = [
    "BEL": "Brussels",
    "LIE": "Vaduz",
    "BGR": "Sofia",
    "USA": "Washington D.C.",
    "MEX": "Mexico City",
    "BRA": "Brasilia",
    "IND": "New Delhi",
    "VNM": "Hanoi"]

for (key, value) in world {
    // Enter your code below
    switch key {
        case "BEL", "LIE", "BGR": europeanCapitals.append(value)
        case "IND", "VNM": asianCapitals.append(value)
    default: otherCapitals.append(value)
    }
    // End code
}


print(europeanCapitals)



//FizzBuzz

var n = Int(arc4random_uniform(UInt32(100)))

if (n % 3 == 0) {
    print("Fizz")
} else if (n % 5 == 0) {
    print("Buzz")
    
} else  if (n % 3 == 0 && n % 5 == 0){
    print("FizzBuzz")
} else {
    print(n)
}

































