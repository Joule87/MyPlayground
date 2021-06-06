//import Foundation
//
//var unsortedArray: [Int] = []
//
//for _ in 0..<30 {
//    let randomNumber = Int(arc4random_uniform(500))
//    unsortedArray.append(randomNumber)
//}
//
//print("\(unsortedArray)")
//
//func bubbleSort(array: inout [Int]) {
//    
//    var isSwapped = true
//    while isSwapped == true {
//        isSwapped = false
//        
//        for index in 1..<array.count {
//            if array[index] < array[index-1] {
//                array.swapAt(index-1, index)
//                isSwapped = true
//            }
//        }
//    }
//
//}
//
//bubbleSort(array: &unsortedArray)
//
//print("\(unsortedArray)")

