//import Foundation
//
//class View: CustomStringConvertible {
//    var string: String
//
//    init(s: String) {
//        string = s
//    }
//
//    var description: String {
//        return string
//    }
//
//    deinit {
//        print("released View with value: \(string)")
//    }
//}
//
//class Weak<T: AnyObject> {
//  weak var value : T?
//  init (value: T?) {
//    self.value = value
//  }
//}
//
//
//var view1: View? =  View(s: "1")
//var view2: View? =  View(s: "2")
//var view3: View? = View(s: "3")
//
//var a1: [Weak<View>] = [Weak(value: view1), Weak(value: view2), Weak(value: view3)]
//
////deallocate view from memory
//view1 = nil
//
//print("\n")
//print("Array content :")
//a1.forEach { item in
//    print("\(item.value?.description)")
//}
//
