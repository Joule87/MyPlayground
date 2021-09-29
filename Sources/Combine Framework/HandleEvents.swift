import Foundation

//Use Publisher/handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:) when you want to examine elements as they progress through the stages of the publisher’s lifecycle.


//var subscriptions = Set<AnyCancellable>()
//
//let integers = (0...2)
//
//integers.publisher
//    .handleEvents(receiveSubscription: { subs in
//        print("Subscription: \(subs.combineIdentifier)") //1
//    }, receiveOutput: { anInt in
//        print("in output handler, received \(anInt)") //3
//    }, receiveCompletion: { status in
//        print("in completion handler: \(status)") //4
//    }, receiveCancel: {
//        print("received cancel")
//    }, receiveRequest: { (demand) in
//        print("received demand: \(demand.description)") //2
//    })
//    .sink { _ in return }
//    .store(in: &subscriptions)
