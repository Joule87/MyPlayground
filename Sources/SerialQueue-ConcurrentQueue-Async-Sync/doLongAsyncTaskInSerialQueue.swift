//import Foundation
//
//func doLongAsyncTaskInSerialQueue() {
//
//    let serialQueue = DispatchQueue(label: "com.queue.Serial")
//       for i in 1...5 {
//         serialQueue.async {
//
//             if Thread.isMainThread{
//                 print("task running in main thread")
//             }else{
//                 print("task running in background thread")
//             }
//             let imgURL = URL(string: "https://upload.wikimedia.org/wikipedia/commons/0/07/Huge_ball_at_Vilnius_center.jpg")!
//             let _ = try! Data(contentsOf: imgURL)
//             print("\(i) completed downloading")
//         }
//        print("Executed task \(i)")
//     }
//    print("Returned Control")
// }
//
//doLongAsyncTaskInSerialQueue()

//
//Task will run in different thread(other than main thread) when you use async in GCD. Async means execute next line do not wait until the block executes which results non blocking main thread & main queue. Since its serial queue, all are executed in the order they are added to serial queue.Tasks executed serially are always executed one at a time by the single thread associated with the Queue.
