
//import Foundation
//
//
//let queue = DispatchQueue(label: "queuename", attributes: .concurrent)
//let semaphore = DispatchSemaphore(value: 3)
//
//for i in 0 ..< 6 {
//    queue.async {
//        let numberSong = i + 1
//        semaphore.wait()
//        print("Downloading song: \(numberSong)")
//        sleep(2)
//        print("Downloaded song: \(numberSong)")
//        semaphore.signal()
//    }
//}
