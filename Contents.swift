import Foundation

func bubbleSort(arr: [Int]) -> [Int] {
    var newArray = arr
    var round = 0
    
    var currentLength: Int {
        return newArray.count - round
    }
    for _ in 0..<currentLength {
        for i in 0..<currentLength - 1 {
            if newArray[i] > newArray [i+1] {
                newArray.swapAt(i+1,i)
            }
        }
        round += 1
    }
    return newArray
}

let test1 = [7,4,3,8,9,0,1,00]
let test2 = [7,4,3,8,9,0,1,00]

var a = bubbleSort(arr: test1)
print(a)

