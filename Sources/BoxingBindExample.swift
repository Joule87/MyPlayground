//import UIKit
//
//class Box<T> {
//    typealias Listener = (T) -> Void
//    
//    private var listener: Listener?
//    
//    var value: T {
//        didSet {
//           listener?(value)
//        }
//    }
//    init(_ value: T) {
//        self.value = value
//    }
//    
//    func bind(listener: @escaping Listener){
//        self.listener = listener
//        listener(value)
//    }
//}
//
//var test = Box(5)
//
//test.bind {
//    print("Added value: \($0)")
//}
//
//test.value = 400
//test.value = 1000
