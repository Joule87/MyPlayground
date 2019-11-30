//
//import Foundation
//import PlaygroundSupport
//
//PlaygroundPage.current.needsIndefiniteExecution = true
//
//var value: Int = 2
//
//let serialQueue = DispatchQueue(label: "serialQueue")
//let concurrentQueue = DispatchQueue(label: "concurrentQueue", attributes: [.initiallyInactive, .concurrent])
//concurrentQueue.setTarget(queue: serialQueue)
//concurrentQueue.activate()
//
//concurrentQueue.async {
//for j in 0...4 {
//        value = j
//        print("\(value) ✡️")
//    }
//}
//
//concurrentQueue.async {
//for j in 5...7 {
//        value = j
//        print("\(value) ✴️")
//    }
//}
