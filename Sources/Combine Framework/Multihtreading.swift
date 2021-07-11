//import SwiftUI
//import Combine
//import PlaygroundSupport
//
//PlaygroundPage.current.needsIndefiniteExecution = true
//
//let intSubject = PassthroughSubject<Int,Never>()
//
//let sub = intSubject
//    .map{ $0 * 10 } //some expensive work
//    .subscribe(on: DispatchQueue.main) //everything upstream will be executed in main queue
//    .receive(on: DispatchQueue.main) //everything downstream will be executed in main queue
//    .sink { (value) in
//        print("received value: \(value)")
//        print("thread: \(Thread.current.description)")
//    }
//
//intSubject.send(1)
//
//DispatchQueue.global().async {
//    intSubject.send(2)
//}
