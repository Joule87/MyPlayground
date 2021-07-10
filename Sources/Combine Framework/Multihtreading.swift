//import Foundation
//
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
//    .receive(on: DispatchQueue.main)
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
