import UIKit
import Foundation
// Stacks

var intStack = [Int]()

//push
intStack.append(100)
//pop
intStack.popLast()
//peek
intStack.last

// Queues

// Lists

var intList = [Int]()
intList.append(100)

// Sets
var primaryColor: Set<String> = ["red", "yellow", "blue"]
var pepsiProducts: Set<String> = ["pepsi", "diet pepsi", "sierra mist"]
var favoriteDrinks: Set<String> = ["pepsi", "fanta", "coke"]

let sodas = primaryColor.union(pepsiProducts)
let myFavoriteDrink = pepsiProducts.intersect(favoriteDrinks)
let myFavoriteDrinks = pepsiProducts.subtract(favoriteDrinks)

// Hashmaps
// Trees
// Graphs


func factorial(num: Int) -> Int {
    let limit = 1
    if num == 0 || num == 1 {return 1}
    
    
    
    return num * factorial(num - 1)
}

factorial(6)

func partition(xs: [Int], pivot: Int) -> ([Int], [Int]) {
    return (xs.filter{$0 < pivot}, xs.filter{$0 > pivot})
}

partition([1, 4, 2, 5], pivot: 3)

func qsort(xs: [Int]) -> [Int] {
    if (xs.isEmpty) {
        return []
    }
    let pivot = xs[0]
    let (ys, zs) = partition(xs, pivot: pivot)
    return qsort(ys) + [pivot] + qsort(zs)
}

qsort([8, 6, 7, 5, 3, 0, 9])






/*

Write a recursive function mult(a,b) that takes two integers as input and returns their product.  You can only use the operations “+” and “-” in your function
*/


func mult(a: Int, b: Int) -> Int {
    
    if a == 0 || b == 0 {return 0}
    return a + mult(a, b: b - 1)
}

mult(4, b: 5)




























