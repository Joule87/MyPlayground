//
//import SwiftUI
//import Combine
//import PlaygroundSupport
//
//
//PlaygroundPage.current.needsIndefiniteExecution = true
//class MyModel: ObservableObject {
//    @Published var lastUpdated: Date = Date()
//    
//    init() {
//        Timer.publish(every: 1, on: .main, in: .common)
//            .autoconnect()
//            .assign(to: &$lastUpdated)
//    }
//}
//
//struct ClockView: View {
//    
//    @StateObject var clockModel = MyModel()
//    
//    var formatter: DateFormatter {
//        let df = DateFormatter()
//        df.dateFormat = "HH:mm:ss"
//        return df
//    }
//    
//    var body: some View {
//        let data = formatter.string(from: clockModel.lastUpdated)
//        Text("\(data)").fixedSize().padding(50)
//    }
//}
//PlaygroundPage.current.setLiveView(ClockView())
