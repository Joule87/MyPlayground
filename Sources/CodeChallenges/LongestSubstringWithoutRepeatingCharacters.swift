
//Given a string s, find the length of the longest substring without repeating characters.

//Example 1:
//
//Input: s = "abcabcbb"
//Output: 3
//Explanation: The answer is "abc", with the length of 3.
//Example 2:
//
//Input: s = "bbbbb"
//Output: 1
//Explanation: The answer is "b", with the length of 1.
//Example 3:
//
//Input: s = "pwwkew"
//Output: 3
//Explanation: The answer is "wke", with the length of 3.
//Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
//Example 4:
//
//Input: s = ""
//Output: 0
//

///SOLUTION

//func lengthOfLongestSubstring(_ s: String) -> Int {
//    var substring = ""
//    var largestApparition = 0
//
//    for character in s {
//        if substring.contains(character) {
//            if let range = substring.range(of: String(character)) {
//                substring = String(substring[range.upperBound...])
//            }
//        }
//        substring.append(character)
//        if largestApparition < substring.count {
//            largestApparition = substring.count
//        }
//    }
//    return largestApparition
//}
//
//lengthOfLongestSubstring("abcabcbb")

///My other solution
/////
//class Solution {
//  func lengthOfLongestSubstring(_ text: String) -> Int {
//    if text.count < 2 { return text.count }
//    var longest = 0
//    var nonRepeatedCharacters: [Character] = []
//      
//    for character in text {
//        if let index = nonRepeatedCharacters.index(of: character) {
//            nonRepeatedCharacters.removeSubrange(0...index)
//        }
//        nonRepeatedCharacters.append(character)
//        longest = max(longest, nonRepeatedCharacters.count)
//    }
//      return longest
//  }
//}
