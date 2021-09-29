//
//import XCTest
//import Combine
//@testable import Tests
//
//class ViewModel {
//    private let valueSubject = CurrentValueSubject<Int, Never>(0)
//    var valuePublisher: AnyPublisher<String, Never> {
//        valueSubject.map{ "\($0)" }.eraseToAnyPublisher()
//    }
//    
//    func set(value: Int) {
//        valueSubject.send(value)
//    }
//}
//
//class Tests: XCTestCase {
//    
//    private var viewModel: ViewModel!
//    
//    override func setUp() {
//        viewModel = ViewModel()
//    }
//    
//    override func tearDown() {
//        viewModel = nil
//    }
//    
//    func testWithExpectation() {
//        viewModel.set(value: 1)
//        let exp = expectation(description: "wait for result")
//        let cancelable: Cancellable = viewModel.valuePublisher.sink { output in
//            exp.fulfill()
//            XCTAssertEqual(output, "1")
//        }
//        wait(for: [exp], timeout: 0.1)
//       
//    }
//    
//    func testWithNoExpectation() {
//        let spy = ValueSpy(publisher: viewModel.valuePublisher)
//        viewModel.set(value: 1)
//        XCTAssertEqual(spy.values, ["0","1"])
//        viewModel.set(value: 2)
//        XCTAssertEqual(spy.values, ["0","1","2"])
//    }
//
//}
//
//private class ValueSpy {
//    
//    private(set) var values = [String]()
//    private var cancellable: AnyCancellable?
//    
//    init(publisher: AnyPublisher<String, Never>) {
//        cancellable = publisher.sink { [weak self] value in
//            self?.values.append(value)
//        }
//    }
//}
