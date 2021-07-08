//
//
//func romanToInt(_ s: String) -> Int {
//    let romanNumbers: [Character: Int]  = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
//    
//    var lastValueChecked: Int  = 0
//    var sum  = 0 {
//        didSet {
//            print("\(sum)")
//        }
//    }
//    
//    for character in s {
//       let currentNumber = romanNumbers[character]!
//        if currentNumber <= lastValueChecked {
//            sum += currentNumber
//        } else {
//            sum = sum - lastValueChecked
//            sum = sum + (currentNumber - lastValueChecked)
//        }
//        lastValueChecked = currentNumber
//    }
//    
//    return sum
//}
//
//let test = "MCMXCIV"
//romanToInt(test)
