//import Foundation
//
//func doLongSyncTaskInConcurrentQueue() {
//  let concurrentQueue = DispatchQueue(label: "com.queue.Concurrent", attributes: .concurrent)
//    for i in 1...5 {
//        concurrentQueue.sync {
//            if Thread.isMainThread{
//                print("task running in main thread")
//            }else{
//                print("task running in background thread")
//            }
//            let imgURL = URL(string: "https://upload.wikimedia.org/wikipedia/commons/0/07/Huge_ball_at_Vilnius_center.jpg")!
//            let _ = try! Data(contentsOf: imgURL)
//            print("\(i) completed downloading")
//        }
//        print("\(i) executed")
//    }
//}
//
//doLongSyncTaskInConcurrentQueue()
//
//Task may run in main thread when you use sync in GCD. Sync runs a block on a given queue and waits for it to complete which results in blocking main thread or main queue.Since the main queue needs to wait until the dispatched block completes, main thread will be available to process blocks from queues other than the main queue.Therefore there is a chance of the code executing on the background queue may actually be executing on the main thread. Since its concurrent queue, tasks may not finish in the order they are added to queue. But with synchronous operation it does although they may be processed by different threads. So, it behaves as this is the serial queue.
