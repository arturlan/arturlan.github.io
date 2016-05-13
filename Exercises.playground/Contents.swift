//: Playground - noun: a place where people can play

func swap(inout arr: [Int], idx1: Int, idx2: Int) {
    var temp = arr[idx1]
    arr[idx1] = arr[idx2]
    arr[idx2] = temp
}
​
func cocktailSort(inout arr:[Int]) -> [Int] {
    var swapped = true
    var numberOfTimesTraversed = 0
    while(swapped) {
        swapped = false
        for i in numberOfTimesTraversed..<arr.count-1 - numberOfTimesTraversed {
            if arr[i] > arr[i+1] {
                swap(&arr, idx1: i, idx2: i+1)
                swapped = true
            }
        }
        
        for i in numberOfTimesTraversed..<arr.count-1 - numberOfTimesTraversed {
            if arr[arr.count - 1 - i] < arr[arr.count - 2 - i] {
                swap(&arr, idx1: arr.count-1-i, idx2: arr.count-2-i)
            }
        }
        numberOfTimesTraversed++
    }
    return arr
}
print(cocktailSort(&arr))


//var arr = [1, 3, 54, 4, 9, 18, 2]
//func bubbleSort(inout arr:[Int]) -> [Int] {
//    var i, y , z, pass, key : Int
//    
//    for i in 0..<arr.count {
//        
//        pass = (arr.count - 1) - i;
//        
//        for y in 0..<pass {
//            key = arr[y]
//            
//            if (key > arr[y + 1]) {
//                z = arr[y + 1]
//                arr[y + 1] = key
//                arr[y] = z
//            }
//        }
//    }
//    
//    return arr
//}
//
//print(bubbleSort(&arr))
//
//
////cocktail sort
//
//var arr1 = [1, 3, 54, 4, 9, 18, 2]
//
//func cocktailSort(inout arr:[Int]) -> [Int] {
//    var swap = true
//    var temp: Int
//    for j in 0...arr1.count-1 {
//        for i in 0...arr.count-1 {
//            if arr[i] > arr[j] {
//                swap(&arr, idx1: i, idx2: i+1)
//            }
//        }
//        for i in 0...arr.count-1 {
//            arr.count - 1 - i
//        }
//    }
//    return arr1
//}
//
//print(cocktailSort(&arr))


var inputArr = [0, 1, 0, 1, 0, 0, 1, 1, 1, 0]
func segragate0nd1(inout inputArr:[Int]) -> [Int] {

for i in 0..<inputArr {
    
    }
}