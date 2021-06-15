//import Foundation
//
//let lock = NSLock(
//)
//var count = 0 {
//    didSet {
//        print("\(count)")
//    }
//}
//
//let thread1 = Thread {
//    for _ in 0...10 {
//        increaseCounter()
//    }
//}
//let thread2 = Thread {
//    for _ in 0...10 {
//        increaseCounter()
//    }
//}
//
//thread1.start()
//thread2.start()
//
//func increaseCounter() {
//    lock.lock()
//    count += 1
//    lock.unlock()
//}
