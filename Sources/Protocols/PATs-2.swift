//import Foundation
//
//protocol Vehicle {
//    associatedtype E
//    associatedtype W
//
//    var engine: E { get set }
//    var wheel: W { get set }
//
//    func getInfo()
//}
//
//protocol Engine {
//    var year: String { get set }
//}
//
//struct InternalCombustion: Engine {
//    var year: String
//}
//
//struct ElectricEngine: Engine {
//    var year: String
//}
//
//protocol Wheel {
//    var info: String { get }
//}
//
//struct StandardWheel: Wheel {
//    var info: String {
//        return "quality ★★"
//    }
//}
//
//struct PremiumWheel: Wheel {
//    var info: String {
//        return "quality ★★★★★"
//    }
//}
//
//struct Car: Vehicle {
//
//    typealias E = Engine
//
//    typealias W = Wheel
//
//    var engine: E
//    var wheel: W
//
//    init(engine: Engine, wheel: Wheel) {
//        self.engine = engine
//        self.wheel = wheel
//    }
//
//    func getInfo() {
//        print("Engine of year \(engine.year) with wheels \(wheel.info)")
//    }
//}
//
//
//struct Bus: Vehicle {
//
//    typealias E = Engine
//
//    typealias W = Wheel
//
//    var engine: E
//    var wheel: W
//
//    init(engine: Engine, wheel: Wheel) {
//        self.engine = engine
//        self.wheel = wheel
//    }
//
//    func getInfo() {
//        print("Engine of year \(engine.year) with wheels \(wheel.info)")
//    }
//}
//
//let electricEngine = ElectricEngine(year: "2021")
//let standardWheel = StandardWheel()
//
//let combustionEngine = InternalCombustion(year: "1992")
//let premiumWheel = PremiumWheel()
//
//let cityBus = Bus(engine: electricEngine, wheel: standardWheel)
//let ferrari = Car(engine: combustionEngine, wheel: premiumWheel)
//
//struct AnyVehicle<En, Wh> : Vehicle {
//    typealias E = En
//
//    typealias W = Wh
//
//    var engine: En
//    var wheel: Wh
//    private let info: () -> Void
//
//    init<V: Vehicle>(vehicle: V) where V.E == E, V.W == W {
//        engine = vehicle.engine
//        wheel = vehicle.wheel
//        info = vehicle.getInfo
//    }
//
//    func getInfo() {
//        info()
//    }
//}
//
//let anyCityBus = AnyVehicle(vehicle: cityBus)
//let anyFerrari = AnyVehicle(vehicle: ferrari)
//
//let cars: [AnyVehicle<Engine, Wheel>] = [anyCityBus, anyFerrari]
//
//cars.forEach { vehicle in
//    vehicle.getInfo()
//}
