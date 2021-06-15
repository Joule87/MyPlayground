//import Foundation
//let semaphore = DispatchSemaphore(value: 1)
//
//var count = 0 {
//    didSet {
//        print("\(count)")
//    }
//}
//
//let thread1 = Thread {
//    for _ in 0...300 {
//        semaphore.wait()
//        count += 1
//        semaphore.signal()
//    }
//}
//let thread2 = Thread {
//    for _ in 0...300 {
//
//        semaphore.wait()
//        count += 1
//        semaphore.signal()
//    }
//}
//
//thread1.start()
//thread2.start()
