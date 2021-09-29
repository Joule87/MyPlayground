//import Foundation
//
//
//class A {
//    init() {
//        print("A init")
//    }
//
//    deinit {
//        print("A deinit")
//    }
//}
//
//class B : NSObject {
//    
//    private static var aShared: A?
//    
//    static var shared: A {
//        guard let shared = aShared else {
//            aShared = A()
//            return aShared!
//        }
//        return shared
//    }
//    
//    static func destroy() {
//        aShared = nil
//    }
//
//    deinit {
//        print("B deinit")
//    }
//   
//    override init() {
//        print("B init")
//        
//    }
//}
//
//
//B.shared
//B.destroy()
//
////class MyManager {
////    static let shared = MyManager()
////    var name = "CASA"
////
////    private init() {
////        print("MyManager llego")
////    }
////
////    deinit {
////        print("MyManager se fueeee")
////    }
////}
////
////class Persona {
////    var name: String
////
////    init(name: String) {
////        self.name = name
////        print("persona llego")
////    }
////
////    deinit {
////        print("persona se fueeee")
////    }
////}
////
////MyManager.shared.name
////Persona(name: "FANFAN")
//
