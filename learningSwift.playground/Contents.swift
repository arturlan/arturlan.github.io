//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

for ch in str.characters {
    print(ch)
}


//insert algorithm

func insert(x: Int, var intoSortedList xs: [Int]) -> [Int] {
    var didInsertX = false
    for i in 0..<xs.count {
        if (x < xs[i]) {
            xs.insert(x, atIndex:i)
            didInsertX = true
            break
        }
    }
    if !didInsertX {
        xs.append(x)
    }
    return xs
}

//insert(3, intoSortedList: [1, 2, 4, 5])
//insert(6, intoSortedList: [1, 2, 4, 5])


func insertion_sort(xs: [Int]) -> [Int] {
    var ys = [Int]()
    for x in xs {
        insert(x, intoSortedList: ys)
        ys = insert(x, intoSortedList:ys)
    }
    return ys
}

insertion_sort([1, 4, 2, 8, 5, 10])

//selection algorithm

func select(xs: [Int], startingAt k: Int) -> Int {
    var minIndex = k
    for i in (k + 1)..<xs.count {
        if xs[i] < xs[minIndex] {
        // we found a new minimum
        minIndex = i
        }
    }
    return minIndex
}

//select([0, 1, 2, 3, 9, 5, 4, 6], startingAt: 4)
//select([0, 1, 2, 3, 9, 5, 4, 6], startingAt: 0)



func selection_sort(inout xs: [Int]) -> [Int] {
    for sortedSoFar in 0..<xs.count {
        let minIndx = select(xs, startingAt: sortedSoFar)
        (xs[sortedSoFar], xs[minIndx]) = (xs[minIndx], xs[sortedSoFar])
    }
    return xs
}

var xs = [8, 6, 7, 5, 3, 0, 9]
selection_sort(&xs)