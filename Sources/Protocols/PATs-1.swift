///https://hasancanakgunduz.medium.com/type-erasure-in-swift-5086f764b33e

//import Foundation
//
//protocol Animal {
//    associatedtype FoodType
//
//    var name: String { get }
//
//    func walk()
//    func eat(food: FoodType)
//}
//
//class Cow: Animal {
//
//    let name: String
//
//    init(withName name: String) {
//        self.name = name
//    }
//
//    func walk() {
//        print("\(name) is walking in the farm.")
//    }
//
//    // Cow should eat grass
//    func eat(food: Food) {
//        if food is Grass {
//            print("\(name) eat \(food.foodName)")
//        }
//    }
//}
//
//class Tiger: Animal {
//
//    let name: String
//
//    init(withName name: String) {
//        self.name = name
//    }
//
//    func walk() {
//        print("\(name) is walking in the jungle.")
//    }
//
//    // Tiger should eat meat
//    func eat(food: Food) {
//        if food is Meat {
//            print("\(name) eat \(food.foodName)")
//        }
//    }
//}
//
//struct Grass: Food {
//    var foodName = "Grass"
//}
//
//struct Meat: Food {
//    var foodName = "Meat"
//}
//
//protocol Food {
//    var foodName: String { get set }
//}
//
//struct AnyAnimal<F>: Animal {
//
//    typealias FoodType = F
//
//    let name: String
//    private let walker: () -> Void
//    private let eater: (F) -> Void
//
//    init<A: Animal>(_ animal: A) where A.FoodType == F {
//        name = animal.name
//        walker = animal.walk
//        eater = animal.eat
//    }
//
//    func walk() {
//        walker()
//    }
//
//    func eat(food: F) {
//        eater(food)
//    }
//}
//
//let myTiger = Tiger(withName: "My Tiger")
//let myCow = Cow(withName: "My Cow")
//
//let anyCow = AnyAnimal(myCow)
//let anyTiger = AnyAnimal(myTiger)
//
//let animalArray: [AnyAnimal<Food>] = [anyTiger, anyCow]
//
//animalArray.forEach { animal in
//    animal.walk()
//    animal.eat(food: Meat())
//}
