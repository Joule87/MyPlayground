//func sort(arr: [Int]) -> [Int] {
//    guard arr.count > 1 else {
//        return arr
//    }
//
//    let leftHalf = Array(arr[0..<(arr.count)/2])
//    let righthalf = Array(arr[(arr.count)/2..<arr.count])
//    
//    return mergeSort(sort(arr: leftHalf), sort(arr: righthalf))
//}
//
//func mergeSort(_ left: [Int], _ right: [Int]) -> [Int] {
//    var sortedArray = [Int]()
//    
//    var left = left
//    var right = right
//    
//    while(left.count>0 && right.count>0) {
//        if left.first! < right.first! {
//            sortedArray.append(left.removeFirst())
//        } else {
//            sortedArray.append(right.removeFirst())
//        }
//    }
//    return sortedArray + left + right
//}
//
//let test1 = [2,3,44,6,1,2,54,6]
//sort(arr: test1)



///-----------------------------------------
///
///
//var arr = [3,5,4,9,6,1,2]
//var arr1 = [17,-2,1,8,6,6,5,4]
//var arr2 = [33,23,44,5,522]
//
//func sort(arr: inout [Int]) {
//    arr = mergeSort(arr: arr)
//}
//
//func mergeSort(arr: [Int]) -> [Int] {
//    if arr.count < 2 {
//        return arr
//    }
//    let leftHalf = Array(arr[0..<arr.count/2])
//    let rightHalf = Array(arr[arr.count/2..<arr.count])
//    
//    return sortPartitions(left: mergeSort(arr: leftHalf), right: mergeSort(arr: rightHalf))
//}
//
//func sortPartitions(left: [Int], right: [Int]) -> [Int] {
//    var leftHalf = left
//    var rightHalf = right
//    var result = [Int]()
//    while(!leftHalf.isEmpty && !rightHalf.isEmpty) {
//        if leftHalf.first! < rightHalf.first! {
//            result.append(leftHalf.removeFirst())
//        } else {
//            result.append(rightHalf.removeFirst())
//        }
//    }
//    return result + leftHalf + rightHalf
//}
//
//
//sort(arr: &arr2)
//print(arr2)
