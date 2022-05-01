import Foundation


var arr = [3,5,4,9,6,1,2]
var arr1 = [17,-2,1,8,6,6,5,4]
var arr2 = [33,23,44,5,522]

func sort(arr: inout [Int]) {
   
}


func swapAt(arr: inout [Int], _ i: Int, _ j: Int) {
    let temporal = arr[i]
    arr[i] = arr[j]
    arr[j] = temporal
}

sort(arr: &arr1)
print(arr1)
