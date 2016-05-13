import Foundation

func mergeSort(values: [Int]) -> [Int] {
    
    let n = values.count
    // Check lenght of values, return values if count is less then 2
    
    if n < 2 {
        return values
    }
    // Split values into left and right (roughly equal size)
    var left = Array(array[0..<n / 2])
    var right = Array(array[n / 2..<n])
    
    

    // Sort the left half
    left = mergeSort(left)
    // Sort the right half
    right = mergeSort(right)
    // Merge the two halves together

    // Return the result

    return merge(withLeftArray: left, andRightArray: right) // <-- change this
}

func merge(withLeftArray left: [Int], andRightArray right: [Int]) -> [Int] {
    var result: [Int] = []
    
    // Iterate over both left and right at the same time

    var i = 0
    var j = 0
    // Compare pairs of values in left and right
    while i < left.count || j < right.count {
        if j >= right.count || left[i] < right[j] {
            result.append(left[i])
            i += 1
        } else if j < right.count {
            result.append(right[j])
            j += 1
        }
    }
    // Take the minim   um of the two and add it to the result

    return result // <-- change this
}
let array: [Int] = [1, 3, 4, 6, 8, 12, 5]

