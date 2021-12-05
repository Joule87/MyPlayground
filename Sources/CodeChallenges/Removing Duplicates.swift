//import Foundation
//
//print("\n Removing duplicates")
//func removeDuplicateOptionOne(string: String) {
//    let nonDuplicates = Set(string)
//    print(String(nonDuplicates))
//}
//
//removeDuplicateOptionOne(string: "papagallo")
//
//func removeDuplicateOptionTwo(string: String) {
//    var result: [Character] = []
//    for char in string {
//        if !result.contains(char) {
//            result.append(char)
//        }
//    }
//    
//    print(String(result))
//}
//
//removeDuplicateOptionTwo(string: "papagallo")
//
//func onlyTwoApparitions(string: String) {
//    var dict: [Character: Int] = [:]
//    let result = string.filter { char in
//        if var apparitions = dict[char], apparitions < 2 {
//            apparitions += 1
//            dict.updateValue(apparitions, forKey: char)
//            return true
//        } else if let apparitions = dict[char], apparitions == 2{
//            return false
//        } else if dict[char] == nil {
//            dict.updateValue(1, forKey: char)
//            return true
//        } else {
//            return false
//        }
//    }
//    print(String(result))
//}
//
//print("\n Only Two Apparitions")
//onlyTwoApparitions(string: "papagallo")
//onlyTwoApparitions(string: "kkkbbbattappa")
