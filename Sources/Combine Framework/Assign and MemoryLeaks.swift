////: [Previous](@previous)
//
//import UIKit
//import Combine
//import PlaygroundSupport
//
//struct User {
//    let name: String
//    let id: Int
//}
//
//class ViewModel {
//    var user = CurrentValueSubject<User, Never>(User(name: "Bob", id: 1))
//    var userId: Int = 1 {
//        didSet {
//            print("userId changed \(userId)")
//        }
//    }
//    var a: AnyCancellable?
//    var subscriptions = Set<AnyCancellable>()
//    
//    init() {
//        let a = user.map(\.id)
//            .sink { [weak self] value in
//                self?.userId = value
//            }
//        subscriptions.insert(a)
//    }
//    
//    deinit {
//        print("deInit")
//    }
//}
//
//
//var viewModel: ViewModel? = ViewModel()
//viewModel?.user.send(User(name: "Lili", id: 2))
//
//viewModel = nil
