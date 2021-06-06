//import Foundation
//
//protocol Component {
//    var baseValue: Int { get set }
//    func value() -> Int
//}
//
//extension Component {
//    var baseValue: Int {
//        get { return 0 }
//        set { baseValue = newValue }
//    }
//}
//
//class CompoundObject: Component {
//    var children = [Component]()
//    
//    func add(component: Component) {
//        children.append(component)
//    }
//    
//    func remove(component: Component) {
//        ///.....
//    }
//    
//    func value() -> Int {
//        let arrayValue = children.compactMap({ $0.value() })
//        let result  = arrayValue.reduce(0, +)
//        return result
//    }
//}
//
//class Screw: Component {
//    var baseValue: Int
//    init(value: Int) {
//        baseValue = value
//    }
//    
//    func value() -> Int {
//        return baseValue
//    }
//}
//
//class Table: Component {
//    var baseValue: Int
//    init(value: Int) {
//        baseValue = value
//    }
//    
//    func value() -> Int {
//        return baseValue
//    }
//}
//
//class Glue: Component {
//    var baseValue: Int
//    init(value: Int) {
//        baseValue = value
//    }
//    
//    func value() -> Int {
//        return baseValue
//    }
//}
//
//class Plywood: Component {
//    var baseValue: Int
//    init(value: Int) {
//        baseValue = value
//    }
//    
//    func value() -> Int {
//        return baseValue
//    }
//}
//
//let door = CompoundObject()
//
//let screw1 = Screw(value: 1)
//let screw2 = Screw(value: 1)
//let screw3 = Screw(value: 1)
//let screw4 = Screw(value: 1)
//
//door.add(component: screw1)
//door.add(component: screw2)
//door.add(component: screw3)
//door.add(component: screw4)
//
//let plywood = Plywood(value: 5)
//door.add(component: plywood)
//
//let glue = Glue(value: 1)
//door.add(component: glue)
//
//let table = Table(value: 10)
//door.add(component: table)
//
//print("Door Value: \(door.value())")
//
//let giantShelfScrew1 = Screw(value: 5)
//let giantShelfScrew2 = Screw(value: 5)
//
//let shelf = CompoundObject()
//shelf.add(component: giantShelfScrew1)
//shelf.add(component: giantShelfScrew2)
//
//shelf.add(component: door)
//
//print("Shelf Value: \(shelf.value())")
//
