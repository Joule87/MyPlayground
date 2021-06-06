//var hundred = [Int]()
//for i in 1...101 {
//    hundred.append(i)
//}
//
//func binarySearchForValue(value: Int, array: [Int]) -> Bool {
//    var leftIndex = 0
//    var rightIndex = array.count - 1
//
//    if value > array[rightIndex] || value < array[leftIndex] {
//        return false
//    }
//
//    while leftIndex <= rightIndex {
//        print("left: \(leftIndex) - right: \(rightIndex)")
//
//        let middleIndex = ((rightIndex - leftIndex) / 2) + leftIndex
//
//        print("value in the middle: \(array[middleIndex]) for index number: \(middleIndex)\n")
//        if value == array[middleIndex] {
//            return true
//        }
//
//        if value >= array[middleIndex] {
//            leftIndex = middleIndex+1
//        } else {
//            rightIndex = middleIndex-1
//        }
//
//    }
//    return false
//}
//
//binarySearchForValue(value: 18, array: hundred)
