//import Foundation
//import Combine
//import PlaygroundSupport
//
//PlaygroundPage.current.needsIndefiniteExecution = true
//
//enum DateError: Error {
//    case dateBeyondTheLimits
//}
//
//let foodBank = ["kiwi", "apple", "grapes", "banana", "pineapple", "strawberry"].publisher
//let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
//
//let calendar = Calendar.current
//let endDate = calendar.date(byAdding: .second, value: 3, to: Date())!
//
//func throwAtEndDate(foodItem: String, date: Date) throws -> String {
//    if date < endDate {
//        return "\(foodItem) at \(date)"
//    } else {
//        throw DateError.dateBeyondTheLimits
//    }
//}
//
//let subscription = foodBank.zip(timer)
//    .tryMap({ foodItem, timestamp in
//        try throwAtEndDate(foodItem: foodItem, date: timestamp)
//    })
//    .sink { (completion) in
//        switch completion {
//        case .finished:
//            print("Completion: finished")
//        case .failure(let error):
//            print("Failure: \(error.localizedDescription)")
//        }
//    } receiveValue: { (value) in
//        print("Value: \(value)")
//    }
//
