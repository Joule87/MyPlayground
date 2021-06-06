//import Foundation
//import PlaygroundSupport
//
//PlaygroundPage.current.needsIndefiniteExecution = true
//
//let concurrentQueue = DispatchQueue(label: "com.queue.Concurrent", attributes: .concurrent)
//
//func performAsyncTaskIntoConcurrentQueue(with completion: @escaping () -> ()) {
//    let group = DispatchGroup()
//    for i in 1...5 {
//        concurrentQueue.async {
//            group.enter()
//            if Thread.isMainThread {
//                print("\(i) task running in main thread")
//            } else{
//                print("\(i) task running in other thread")
//            }
//
//            let imageURL = URL(string: "https://upload.wikimedia.org/wikipedia/commons/0/07/Huge_ball_at_Vilnius_center.jpg")!
//            let _ = try! Data(contentsOf: imageURL)
//            print("\(i) finished downloading")
//            group.leave()
//        }
//    }
//    
//    let timeout =  group.wait(timeout: DispatchTime.now() + 10)
//    
//    switch timeout {
//    case .success:
//        completion()
//    case .timedOut:
//        print("TIMEOUT")
//    }
//}
//
//print("###### Download all images asynchronously and notify on completion ######")
//print("############")
//print("############\n")
//
//performAsyncTaskIntoConcurrentQueue(with: {
//    print("\n############")
//    print("############")
//    print("###### All images are downloaded")
//})
