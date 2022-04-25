//import Foundation
//
//protocol PayloadDelegate {
//    associatedtype P
//    
//    func process(payload: P)
//}
//
/////Note: When using AnyPayloadDelegate as a delegate in a provider(presenter layer) be sure to check if you need to set the this delegate as nil in viewWillDisappear() function on ViewController's provider in other to avoid a retain cycle.
//class AnyPayloadDelegate<L>: PayloadDelegate {
//    typealias P = L
//    private var process: (L) -> Void
//    
//    init<E: PayloadDelegate>(delegate: E) where E.P == P {
//        self.process = { element in
//            delegate.process(payload: element)
//        }
//    }
//    
//    func process(payload: L) {
//        process(payload)
//    }
//}
