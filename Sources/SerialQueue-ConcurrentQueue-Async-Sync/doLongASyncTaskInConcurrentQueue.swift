//import Foundation
//
//func doLongASyncTaskInConcurrentQueue() {
//    let concurrentQueue = DispatchQueue(label: "com.queue.Concurrent", attributes: .concurrent)
//    for i in 1...5 {
//        concurrentQueue.async {
//            if Thread.isMainThread{
//                print("task running in main thread")
//            }else{
//                print("task running in background thread")
//            }
//            let imgURL = URL(string: "https://upload.wikimedia.org/wikipedia/commons/0/07/Huge_ball_at_Vilnius_center.jpg")!
//            let _ = try! Data(contentsOf: imgURL)
//            print("\(i) completed downloading")
//        }
//        print("\(i) executing")
//    }
//    print("Control returned to main thread")
//}
//
//doLongASyncTaskInConcurrentQueue()
//
//Task will run in background thread when you use async in GCD. Async means execute next line do not wait until the block executes which results non blocking main thread. Remember in concurrent queue, task are processed in the order they are added to queue but with different threads attached to the queue. Remember they are not supposed to finish the task as the order they are added to the queue.Order of task differs each time threads are created as necessarily automatically.Task are executed in parallel. With more than that(maxConcurrentOperationCount) is reached, some tasks will behave as a serial until a thread is free.
