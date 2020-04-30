//import Foundation
//import PlaygroundSupport
//PlaygroundPage.current.needsIndefiniteExecution = true
//
//class TestRaceCondition {
//    
//    var earthArray = [String]()
//    let serialQueue = DispatchQueue(label: "serial")
//    
//    func startRace() {
//        serialQueue.async {
//            for i in 0...1000 {
//                usleep(3)
//                self.earthArray.append("🌎: \(i)")
//            }
//        }
//        
//        serialQueue.async {
//            for i in 0...1000 {
//                self.earthArray[i] = "⚽: \(i)"
//            }
//        }
//    }
//    
//    func printEarth() {
//        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
//            self.earthArray.forEach { item in
//                print(item)
//            }
//        }
//    }
//}
//
//let test = TestRaceCondition()
//test.startRace()
//test.printEarth()
