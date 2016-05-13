//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let str2 = "Other hello, playground"

let implicitDouble = 70.0

"the number 70 is \(implicitDouble)"


let name = "Artur"

"my name is \(name)"

var cl = [
"2014" : "Fifteen people",
]

cl ["2015"] = "Ten people"

var optionalString: String? = "Hello"

print(optionalString == nil)

var optionalName: String? = "John Appleseed"

var greeting = "Hello!"

if let name = optionalName {

    greeting = "Hello, \(name)"

}

var firstForLoop = 0

for i in 0..<100 {

    firstForLoop += i
    print(i)

}


var secondForLoop = 0
for var i = 0; i < 4; ++i {
    secondForLoop += i
}
print(secondForLoop)


var n = 2
while n < 100 {
    n = n * 2
}


//function

func sayHello(name: String){
    print("Hello \(name)")
    
}
sayHello("Artur")


func travelCity(country: String) ->String{
    return "\(country)stan"
}

travelCity("Uzbeki")
travelCity("Tadjiki")





















