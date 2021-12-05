//import Foundation
//
////MARK: Product Creation
//enum Size {
//    case small
//    case medium
//    case large
//}
//
//enum Color {
//    case red
//    case green
//    case blue
//}
//
//struct Product {
//    var name: String
//    var color: Color
//    var size: Size
//
//}
//
//extension Product : CustomStringConvertible {
//    var description: String {
//        return "\(size) \(color) \(name)"
//    }
//}
//
//protocol Sized {
//    var size: Size { get set }
//}
//
//protocol Colored {
//    var color: Color { get set }
//}
//
////MARK: Have type you want to filter conform to protocols
//extension Product : Colored, Sized { }
//
//
////MARK: Create Specifications
//protocol Specification {
//    associatedtype T
//
//    func isSatisfied(item: T) -> Bool
//}
//
////MARK: Refactor Specification entities to work with any type that has the necessary property
//struct ColorSpecification<T: Colored> : Specification {
//
//    var color: Color
//
//    func isSatisfied(item: T) -> Bool {
//        return item.color == color
//    }
//}
//
//struct SizeSpecification<T: Sized> : Specification {
//    var size: Size
//
//    func isSatisfied(item: T) -> Bool {
//        return item.size == size
//    }
//}
//
//protocol Filter {
//    associatedtype T
//    func filter<Spec: Specification>(items: [T], specs: Spec) -> [T] where Spec.T == T
//}
//
////MARK: Refactor Filter to be generic
//struct GenericFilter<T> : Filter {
//
//    func filter<Spec: Specification>(items: [T], specs: Spec) -> [T] where T == Spec.T {
//            var output = [T]()
//            for item in items {
//                if specs.isSatisfied(item: item) {
//                    output.append(item)
//                }
//            }
//            return output
//    }
//}
//
//let tree = Product(name: "tree", color: .green, size: .large)
//let frog = Product(name: "frog", color: .green, size: .small)
//let strawberry = Product(name: "strawberry", color: .red, size: .small)
//
//let small = SizeSpecification<Product>(size: .small)
//let result = GenericFilter().filter(items: [tree, frog, strawberry], specs: small)
//print(result)
