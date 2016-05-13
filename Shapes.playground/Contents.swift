//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Hello, playground"


enum ColorName: String {
    case Black
    case White
    case Silver
}

let fill = ColorName.White

enum CSSColor {
    case Named(ColorName)
    case RGB(UInt8, UInt8, UInt8)
}

extension CSSColor: CustomStringConvertible {
    var description: String {
        switch self {
        case .Named(let colorName):
            return colorName.rawValue
        case .RGB(let red, let green, let blue):
            return String(format: "#%02X%02X%02X", red, green, blue)
        }
    }
}

let color1 = CSSColor.Named(.Black)
let color2 = CSSColor.RGB(0xAA, 0xAA, 0xAA)
print("color1 = \(color1), color2 = \(color2)")


var arr = [1, 3, 5, 7, 9, 13, 21]
var sum = 0
for i in arr {
    sum += i
}

print(sum)

func sumOfHandshakes(n: Int) -> Int {
    
    let sumH = n*(n-1)/2
    
    return sumH
}

sumOfHandshakes(10)



var inserA = [3, 6, 2, 9, 1, 7, 4]


func insertionSort(var inputArray: Array<Int>) -> Array<Int> {
    for index in 1..<inputArray.count {
        let value = inputArray[index]
        var i = index - 1
        while i >= 0 {
            if value < inputArray[i] {
                inputArray[i + 1] = inputArray[i]
                inputArray[i] = value
                i = i - 1
            } else {
                break
            }
            
        }
        
    }
    return inputArray
}


insertionSort(inserA)











































var insertaionArray = [3, 5, 8, 2, 1, 4, 9, 3, 5, 10]

func insertionSorting(var array: [Int]) -> [Int] {
    if array.count == 1 {
        return array
    }
    for indx in 1..<array.count {
        let key = array[indx]
        var firstIndx = indx - 1
        while firstIndx >= 0 {
            if key < array[firstIndx] {
            array[firstIndx + 1] = array[firstIndx]
            array[firstIndx] = key
            firstIndx = firstIndx - 1
        }  else {
        break
            }
        }
    }
    return array
}

insertionSorting(insertaionArray)

func binarySearch(arrayOfBinarySearch: [Int]) -> Int {
    var thatNumber = 
}
















