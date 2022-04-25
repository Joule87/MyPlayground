//func longestPalindrome(_ text: String) -> String {
//     if text.count < 2 { return text }
//     
//     let characters = Array(text)
//     var lowIndex = 0
//     var maxLength = 0
//     
//     var result: String {
//         String(characters[lowIndex..<lowIndex+maxLength])
//     }
//
//     for index in 0..<characters.count {
//         if (characters.count - index) * 2 < maxLength {
//             return result
//         }
//         findPalindrome(index, index, characters, &lowIndex, &maxLength)
//         findPalindrome(index, index+1, characters, &lowIndex, &maxLength)
//     }
//         
//     return result
// }
// 
// func findPalindrome(_ lowBound: Int, _ upperBound: Int, _ characters: [Character], _ lowIndex: inout Int,  _ maxLength: inout Int) {
//
//     var i = lowBound
//     var j = upperBound
//     while(i >= 0 && j < characters.count && characters[i] == characters[j]) {
//         i -= 1
//         j += 1
//     }
//     let maxLengthFound = j - i - 1
//     if (maxLength < maxLengthFound) {
//         lowIndex = i + 1
//         maxLength = maxLengthFound
//     }
// }
