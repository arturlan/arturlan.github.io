//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func mysteryFunc(values: [Int]) -> [Int] {
    let n = values.count
    if n < 2 {
        return values
    }
    var left = Array(values[0..<n / 2])
    var right = Array(values[n / 2..<n])
    left = mysteryFunc(left)
    right = mysteryFunc(right)
    
    return helperFunc(left, right)
}

func helperFunc(var left: [Int], var _ right: [Int]) -> [Int] {
    var result: [Int] = []
    while !left.isEmpty && !right.isEmpty {
        if left[0] < right[0] {
            result.append(left[0])
            left.removeAtIndex(0)
        } else {
            result.append(right[0])
            right.removeAtIndex(0)
        }
    }
    return result + left + right
}

mysteryFunc([1, 3, 5, 7, 11, 7, 5, 3, 1])

/*
Q5 (4 pts): Implement the class or structure of the Nodes of binary tree in Swift below. The tree should be able to store any Type
*/

struct Node {
    var node:()
    func tree(n: [Node]) {
        
    }
}

/*
func bubbleSort_theFunctional(array: [Int]) -> [Int] {
    
    func isSorted(array: [Int]) -> Bool {
        
        guard array.count > 1 else {
            return true
        }
        
        let (first, second, rest) = (array[0], array[1], array.dropFirst())
        
        return first <= second ? isSorted(Array(rest)) : false
    }
    
    func bubble(array: [Int]) -> [Int] {
        
        guard array.count > 1 else {
            return array
        }
        
        let (first, second, rest) = (array[0], array[1], Array(array.dropFirst(2)))
        
        return [min(first, second)] + bubble([max(first, second)] + rest)
    }
    
    return isSorted(array) ? array : bubbleSort_theFunctional(bubble(array))
}
*/


func iterativeFunc(characterArray: [String]) -> Int {
    var counter = 0
    for x in 0..<characterArray.count {
        if characterArray[x] == " " {
            counter += 1
        } else if characterArray[x] == "a" {
            counter -= 5
        }
    }
    return counter
}

iterativeFunc(["a", "t", " "])



func iterativeFuncRecursive(characterArray: [String]) -> Int {
    var counterRecursive = 0
    
    func simpleFunc(characteArray: [String]) -> Bool {
        let rest = characterArray.dropFirst()
        if characterArray[0] == "a" {
            counterRecursive += 1
            simpleFunc(Array(rest))
        } else if characterArray[0] == " "{
            counterRecursive -= 5
            simpleFunc(Array(rest))
        }
        return false
    }
    
    func sum(characterArray: [String]) -> Int {
        return 1
    }
    return counterRecursive
}

iterativeFuncRecursive(["a", "t", " ", "a"])



//
//int[,] array = new int[4,4] {
//    { 1,2,3,4 },
//    { 5,6,7,8 },
//    { 9,0,1,2 },
//    { 3,4,5,6 }
//};
//
//int[,] rotated = RotateMatrix(array, 4);
//
//static int[,] RotateMatrix(int[,] matrix, int n) {
//    int[,] ret = new int[n, n];
//    
//    for (int i = 0; i < n; ++i) {
//        for (int j = 0; j < n; ++j) {
//            ret[i, j] = matrix[n - j - 1, i];
//        }
//    }
//    
//    return ret;
//}



for i in i..<n {
    for j in j..<n {
        result[i, j] = matrix[n - j - 1, i]
    }
}



















