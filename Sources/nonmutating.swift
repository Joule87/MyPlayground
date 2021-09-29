//import Foundation
//
//protocol Settings {
//    subscript(key: String) -> Any? { get nonmutating set }
//}
//
//extension UserDefaults: Settings {
//    subscript(key: String) -> Any? {
//        get { return object(forKey: key)}
//        set { setValue(newValue, forKey: key) }
//    }
//}
//
//let settings: Settings = UserDefaults.standard
//settings["myProp"] = "someValue"
//print(settings["myProp"])
