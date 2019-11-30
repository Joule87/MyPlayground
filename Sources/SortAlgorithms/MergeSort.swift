//import Foundation
//
//func mergeSort(array:[Int]) -> [Int] {
//    guard array.count > 1 else {
//        return array
//    }
//    let leftArray = Array(array[0..<array.count/2])
//    let rightArray = Array(array[array.count/2..<array.count])
//
//    return merge(leftArray: mergeSort(array: leftArray), rightArray: mergeSort(array: rightArray))
//}
//
//func merge(leftArray: [Int], rightArray: [Int]) -> [Int] {
//    var mergeArray: [Int] = []
//    var left = leftArray
//    var right = rightArray
//
//    while left.count > 0 && right.count > 0 {
//        if left.first! > right.first! {
//            mergeArray.append(right.removeFirst())
//        } else {
//            mergeArray.append(left.removeFirst())
//        }
//    }
//    return mergeArray + left + right
//}
//
//var unsortedArray: [Int] = []
//
//for _ in 0..<30 {
//    let randomNumber = Int(arc4random_uniform(500))
//    unsortedArray.append(randomNumber)
//}
//
//print(unsortedArray)
//
//var sortedArray = mergeSort(array: unsortedArray)
//
//print(sortedArray)
//
//
