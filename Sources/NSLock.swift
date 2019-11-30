//import Foundation
//
//class Test {
//    var count = 0
//    let lock = NSLock()
//
//    func testA() {
//            count = 0
//
//            let queueA = DispatchQueue(label: "Q1")
//            let queueB = DispatchQueue(label: "Q2")
//            let queueC = DispatchQueue(label: "Q3")
//
//            queueA.async {
//                for _ in 1...100 {
//                    self.increase()
//                }
//            }
//            queueB.async {
//                for _ in 1...100 {
//                    self.increase()
//                }
//            }
//            queueC.async {
//                for _ in 1...100 {
//                    self.increase()
//                }
//
//            }
//    }
//
//    ///The increase() method:
//    func increase() {
//        lock.lock()
//        self.count += 1
//        print(count)
//        lock.unlock()
//    }
//}
//
//
//let a = Test()
//a.testA()
