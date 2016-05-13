//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

func quickSort(inout arr: [Int], firstIdx: Int, lastIdx: Int) {
    // base case
    if lastIdx - firstIdx <= 1{ return }
    // partition
    let splitPoint = partition(&arr, firstIdx: firstIdx, lastIdx: lastIdx)
    // quickSort on leftHalf
    quickSort(&arr, firstIdx: firstIdx, lastIdx: splitPoint - 1)
    // quickSort on rightHalf
    quickSort(&arr, firstIdx: splitPoint + 1, lastIdx: lastIdx)
}

func quickSort(inout arr: [Int]) {
    quickSort(&arr, firstIdx: 0, lastIdx: arr.count-1)
}

func partition(inout arr: [Int], firstIdx: Int, lastIdx: Int) -> Int {
    // set pivotValue to firstElement
    let pivotValue = arr[firstIdx]
    // set leftMark
    var leftMark = firstIdx + 1
    // set rightMark
    var rightMark = lastIdx
    /*
    as leftMark and rightMark close in on each other,
    swap the items that are greater than the pivot value
    on the left side with the items that are less than the pivot
    value on the right side. Stop when rightMark crosses leftMark
    */
    while leftMark <= rightMark {
        while arr[leftMark] < pivotValue {
            leftMark += 1
        }
        while arr[rightMark] > pivotValue {
            rightMark -= 1
        }
        if leftMark < rightMark {
            swap(&arr[leftMark], &arr[rightMark])
        }
    }
    // set the correct value at the splitPoint
    if firstIdx != rightMark {
        swap(&arr[firstIdx], &arr[rightMark])
    }
    return rightMark  // return the splitPoint
}
var arr = [22, 56, 43, 98, 0, 12, 65]
//quickSort(&arr)

struct Stack<T> {
    var items:[T]
    
    //push
    mutating func push(element:T) {
        items.append(element)
    }
    
    //pop
    mutating func pop() -> T? {
        if items.count == 0 { return nil}
        return items.removeLast()
    }
    
    //peek
    func peek() -> T? {
        return items.last
    }
    
    func size() -> Int {
        return items.count
    }
    
    //    var size:Int {
    //        return items.count
    //    }
}

struct Queue<T> {
    var items:[T]
    // enqueue
    mutating func enqueue(element: T) {
        items.append(element)
    }
    
    //dequeue
    mutating func dequeue() -> T? {
        if items.count == 0 { return nil }
        return items.removeFirst()
    }
    
    //size
    func size() -> Int {
        return items.count
    }
}

//Exercise

func quickSortWithMedianPivot(inputArray arr: [Int], left: Int, right: Int) {
    
}


func insertionSort(inout numberList:[Int]){
    var x, y, key : Int
    for (x = 0; x < numberList.count; x++) {
        
        key = numberList[x]
        for (y = x; y > -1; y--) {
            if (key < numberList[y]) {
                numberList.removeAtIndex(y + 1)
                numberList.insert(key, atIndex: y)
            }
        }
    }
}
var numberList = [22, 56, 43, 98, 0, 12, 65]
insertionSort(&numberList)





