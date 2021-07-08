//import Foundation
//import Combine
//import PlaygroundSupport
//
//PlaygroundPage.current.needsIndefiniteExecution = true
//
//let pub = Timer.publish(every: 1, on: .main, in: .common)
//    .autoconnect()
//    .scan(-1, { counter, time in
//        print("Timer stuff \(time)")
//        return counter + 1
//    })
//    .filter({ $0%2 == 0})
//    .sink { completion in
//        print("data stream completion \(completion)")
//    } receiveValue: { value in
//        print("did receive value \(value)")
//    }
//
//RunLoop.main.schedule(after: RunLoop.SchedulerTimeType(Date() + 11)) {
//    pub.cancel()
//}
