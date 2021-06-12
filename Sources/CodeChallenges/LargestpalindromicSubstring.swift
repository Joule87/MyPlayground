//
//func longestPalindrome(_ s: String) -> String {
//    var result: String = ""
//    let characters: [Character] = Array(s)
//    var index = 0
//
//    while index < characters.count {
//        if (characters.count - index) * 2 < result.count {
//            break
//        }
//
//        if let palindromic = findPalindromic(array: characters, leftIndex: index, rightIndex: index) {
//            result = palindromic.count > result.count ? palindromic : result
//        }
//
//        if let palindromic = findPalindromic(array: characters, leftIndex: index , rightIndex: index+1) {
//            result = palindromic.count > result.count ? palindromic : result
//        }
//        index += 1
//    }
//
//    return result
//}
//
//func findPalindromic(array: [Character], leftIndex: Int, rightIndex: Int) -> String? {
//    var lowBound = leftIndex
//    var highBound = rightIndex
//    while lowBound >= 0 && highBound < array.count {
//        if array[lowBound] != array [highBound] {
//            break
//        }
//        lowBound -= 1
//        highBound += 1
//    }
//    let result = String(array[lowBound + 1..<highBound])
//    return result
//}
//
//
//
//longestPalindrome("civilwartestingwhetherthatnaptionoranynartionsoconceivedandsodedicatedcanlongendureWeareqmetonagreatbattlefiemldoftzhatwarWehavecometodedicpateaportionofthatfieldasafinalrestingplaceforthosewhoheregavetheirlivesthatthatnationmightliveItisaltogetherfangandproperthatweshoulddothisButinalargersensewecannotdedicatewecannotconsecratewecannothallowthisgroundThebravelmenlivinganddeadwhostruggledherehaveconsecrateditfaraboveourpoorponwertoaddordetractTgheworldadswfilllittlenotlenorlongrememberwhatwesayherebutitcanneverforgetwhattheydidhereItisforusthelivingrathertobededicatedheretotheulnfinishedworkwhichtheywhofoughtherehavethusfarsonoblyadvancedItisratherforustobeherededicatedtothegreattdafskremainingbeforeusthatfromthesehonoreddeadwetakeincreaseddevotiontothatcauseforwhichtheygavethelastpfullmeasureofdevotionthatweherehighlyresolvethatthesedeadshallnothavediedinvainthatthisnationunsderGodshallhaveanewbirthoffreedomandthatgovernmentofthepeoplebythepeopleforthepeopleshallnotperishfromtheearth")
