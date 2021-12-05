//Example of using PATs as a type

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
//    func eat(food: Grass) {
//        print("\(name) eat \(food.foodName)")
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
//    func eat(food: Meat) {
//        print("\(name) eat \(food.foodName)")
//    }
//}
//
//struct Grass {
//    let foodName = "Grass"
//}
//
//struct Meat {
//    let foodName = "Meat"
//}
//
//struct AnyAnimal: Animal {
//
//    let name: String
//    private let walker: () -> Void
//    private let eater: (Any) -> Void
//
//    init<T: Animal>(_ animal: T) {
//        name = animal.name
//
//        walker = {
//            animal.walk()
//        }
//
//        eater = { food in
//            guard let f = food as? T.FoodType else { return }
//            animal.eat(food: f)
//        }
//    }
//
//    func walk() {
//        walker()
//    }
//
//    func eat(food: Any) {
//        eater(food)
//    }
//}
//
//
//let myTiger = Tiger(withName: "My Tiger")
//let myCow = Cow(withName: "My Cow")
//let animalArray: [AnyAnimal] = [AnyAnimal(myTiger), AnyAnimal(myCow)]
//
//animalArray.forEach { (animal) in
//    animal.walk()
//    animal.eat(food: Grass())
//}
