//import Foundation
//
//func reverse(_ x: Int) -> Int {
//    let isNegative: Bool = x < 0 ? true : false
//    let tempX = abs(x)
//    var result: Int = 0
//    
//    let charArray = String(tempX).reversed()
//    let stringX = String(charArray)
//    if let number = Int32(stringX) {
//        result = Int(number)
//    }
//    if isNegative {
//        result *= -1
//    }
//    return result
//}
//
//reverse(-82342232)



//class Solution {
//    func reverse(_ x: Int) -> Int {
//        let isNegative = x < 0 ? true : false
//        let stringNumber = String(abs(x))
//        var result = ""
//        for number in stringNumber {
//            result.insert(number, at: result.startIndex)
//        }
//        guard let resultNumber = Int(result), resultNumber > Int32.min, resultNumber < Int32.max else {
//            return 0
//        }
//        return isNegative ? -1 * resultNumber : resultNumber
//    }
//}
