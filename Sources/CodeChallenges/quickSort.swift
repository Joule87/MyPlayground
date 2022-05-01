//import Foundation
//
//PIVOT
//
//var arr = [3,5,4,9,6,1,2]
//var arr1 = [17,-2,1,8,6,6,5,4]
//var arr2 = [33,23,44,5,522]
//
//func sort(arr: inout [Int]) {
//    quicksort(arr: &arr, lowIndex: 0, highIndex: arr.count-1)
//}
//
//func quicksort(arr: inout [Int], lowIndex: Int, highIndex: Int) {
//    if lowIndex >= highIndex {
//        return
//    }
//    let leftPointer = particion(arr: &arr, lowIndex: lowIndex, highIndex: highIndex)
//    quicksort(arr: &arr, lowIndex: lowIndex, highIndex: leftPointer-1)
//    quicksort(arr: &arr, lowIndex: leftPointer+1, highIndex: highIndex)
//}
//
//func particion(arr: inout [Int], lowIndex: Int, highIndex: Int) -> Int {
//    var leftPointer = lowIndex
//    var rightPointer = highIndex
//    let pivot = arr[highIndex]
//    
//    while (leftPointer < rightPointer) {
//        while(arr[leftPointer] <= pivot && leftPointer < rightPointer) {
//            leftPointer += 1
//        }
//        while(arr[rightPointer] >= pivot && leftPointer < rightPointer) {
//            rightPointer -= 1
//        }
//        
//        swapValues(arr: &arr, lowIndex: leftPointer, upperIndex: rightPointer)
//    }
//    swapValues(arr: &arr, lowIndex: leftPointer, upperIndex: highIndex)
//    return leftPointer
//}
//
//func swapValues(arr: inout [Int], lowIndex: Int, upperIndex: Int) {
//    let temp = arr[lowIndex]
//    arr[lowIndex] = arr[upperIndex]
//    arr[upperIndex] = temp
//}
//
//sort(arr: &arr1)
//print(arr1)
