
import UIKit
import Foundation

func factorialNR(var num: Int) -> Int {
    var result = num
    let limit = 1
    
    while num != limit {
        num--
        result *= num
    }
    return result
}

factorialNR(4)

func recursionWRL(num: Int) -> Int {
    if num == 0 || num == 1 { return 1 }
    var result = num > 0 ? num * recursionWRL(num - 1) : num * -recursionWRL(-num - 1)
    return result
}

recursionWRL(-4)


// bubble sort

func bubbbleSort(ourArr: [Int]) -> [Int] {
    
    var array = ourArr
    
    if array.count <= 1 {
        return array
    }
    
    for i in 0..<array.count - 1 {
       
        var hasSwapped = false
        
        for j in 0..<array.count - i - 1 {
        
            if array[j] > array[j + 1] {
            
               (array[j], array[j + 1]) = (array[j + 1], array[j])
                
                hasSwapped = true
            }
        }
        
        if !hasSwapped {
            break
        }
    }
    return array
}


//func bubbleSort_theClassic(array: [Int]) -> [Int] {
//    
//    // take in an array that is considered unsorted and make a copy of it
//    var array = array
//    
//    // return the array if it is empty or contains a single element, for it is sorted
//    if array.count <= 1 {
//        return array
//    }
//    
//    // pass through the array, but it needs only as many passes as the number of swaps required
//    for i in 0..<array.count - 1 {
//        
//        // define a flag keep track if the array is already sorted
//        var hasSwapped = false
//        
//        // compare each pair of adjacent elements, except to already sorted elements on subsequent passes
//        for j in 0..<array.count - i - 1 {
//            
//            // check is elements are in the wrong order
//            if array[j] > array[j + 1] {
//                
//                // perform a swap
//                (array[j], array[j + 1]) = (array[j + 1], array[j])
//                
//                // flag if array is not properly sorted yet
//                hasSwapped = true
//            }
//        }
//        
//        // check if a swap ocurred, if not, the array is then sorted
//        if !hasSwapped {
//            break
//        }
//}
//
//    return array
//}
//bubbleSort_theClassic([1, 2, 1, 3, 5, 13, 8])
//


//bubble sort with recursion

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

bubbleSort_theFunctional([1, 2, 1, 3, 5, 13, 8])



//insertion sort

func insertionSort_theFunctional(array: [Int]) -> [Int] {
    
    guard array.count > 1 else {
        return array
    }
    
    func insert(first: Int, _ rest: [Int]) -> [Int] {
        
        guard !rest.isEmpty else {
            return [first]
        }
        
        let (newFirst, newRest) = (rest[0], Array(rest.dropFirst()))
        
        return first < newFirst ? [first, newFirst] + newRest : [newFirst] + insert(first, newRest)
    }
    
    let (first, rest) = (array[0], Array(array.dropFirst()))
    
    return insert(first, insertionSort_theFunctional(rest))
}

insertionSort_theFunctional([1, 2, 1, 3, 5, 13, 8])


/*

Arrays
Set, Check element at a particular index: O(1)
Searching: O(n) if array is unsorted and O(log n) if array is sorted and something like a binary search is used,
As pointed out by Aivean, there is no Delete operation available on Arrays. We can symbolically delete an element by setting it to some specific value, e.g. -1, 0, etc. depending on our requirements
Similarly, Insert for arrays is basically Set as mentioned in the beginning

ArrayList:
Add: Amortized O(1)
Remove: O(n)
Contains: O(n)
Size: O(1)

Linked List:
Inserting: O(1), if done at the head, O(n) if anywhere else since we have to reach that position by traveseing the linkedlist linearly.
Deleting: O(1), if done at the head, O(n) if anywhere else since we have to reach that position by traveseing the linkedlist linearly.
Searching: O(n)

Doubly-Linked List:
Inserting: O(1), if done at the head or tail, O(n) if anywhere else since we have to reach that position by traveseing the linkedlist linearly.
Deleting: O(1), if done at the head or tail, O(n) if anywhere else since we have to reach that position by traveseing the linkedlist linearly.
Searching: O(n)

Stack:
Push: O(1)
Pop: O(1)
Top: O(1)
Search (Something like lookup, as a special operation): O(n) (I guess so)

Queue/Deque/Circular Queue:
Insert: O(1)
Remove: O(1)
Size: O(1)

Binary Search Tree:
Insert, delete and search: Average case: O(log n), Worst Case: O(n)

Red-Black Tree:
Insert, delete and search: Average case: O(log n), Worst Case: O(log n)

Heap/PriorityQueue (min/max):
Find Min/Find Max: O(1)
Insert: O(log n)
Delete Min/Delete Max: O(log n)
Extract Min/Extract Max: O(log n)
Lookup, Delete (if at all provided): O(n), we will have to scan all the elements as they are not ordered like BST

HashMap/Hashtable/HashSet:
Insert/Delete: O(1) amortized
Re-size/hash: O(n)
Contains: O(1)

*/



