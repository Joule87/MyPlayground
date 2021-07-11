//import SwiftUI
//import Combine
//import PlaygroundSupport
//
//PlaygroundPage.current.needsIndefiniteExecution = true
//
//let randomPhotoPublisher = getRandomPhoto()
//let weeklyPhotoPublisher = getPhotoOfTheWeek()
//
//var subscriptions = Set<AnyCancellable>()
//
//func getRandomPhoto() -> AnyPublisher<Data, Never> {
//    let url = URL(string: "https://source.unsplash.com/random")!
//    
//    return URLSession.shared.dataTaskPublisher(for: url)
//        .map(\.data)
//        .replaceError(with: Data())
//        .eraseToAnyPublisher()
//}
//
//func getPhotoOfTheWeek() -> AnyPublisher<Data, Never> {
//    let url = URL(string: "https://source.unsplash.com/weekly?water")!
//    
//    return URLSession.shared.dataTaskPublisher(for: url)
//        .map(\.data)
//        .replaceError(with: Data())
//        .eraseToAnyPublisher()
//}
//
//randomPhotoPublisher
//    .zip(weeklyPhotoPublisher)
//    .handleEvents(receiveOutput: { (randomPhotoData, weeklyPhotoData) in
//        let randomPhoto = UIImage(data: randomPhotoData)
//        let weeklyPhoto = UIImage(data: weeklyPhotoData)
//        
//        print(randomPhoto ?? "")
//        print(weeklyPhoto ?? "")
//    })
//    .sink(receiveValue: { _ in })
//    .store(in: &subscriptions)
