//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var my_list: [Int] = [1, 7, 2, 4, 3]

func findMinimum(arr: [Int]) -> Int {
    var min = arr[0]
    for i in 0..<arr.count {
        if min > arr[i] {
            return min
        }
    }
    return min

}

findMinimum(my_list)





func reverseInteger(var number: Int) -> Int {
    
    var reverse = 0
    
    while (number != 0) {
        reverse = reverse * 10 + number % 10
        number = number / 10
    }
    
    return reverse
}

reverseInteger(12345)

//bubble sort

func bubbleSort(arr: [Int]) -> [Int] {
    var array = arr
    
    for i in 0..<array.count - 1 {
        for j in 0..<array.count - i - 1 {
            if array[j] > array[j + 1] {
                swap(&array[j], &array[j + 1])
            }
        }
    }
    return array
}

bubbleSort(my_list)