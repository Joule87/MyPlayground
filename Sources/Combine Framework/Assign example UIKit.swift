////: [Previous](@previous)
//
//import UIKit
//import Combine
//import PlaygroundSupport
//
////PlaygroundPage.current.needsIndefiniteExecution = true
//
//class TextFieldViewController: UIViewController, UITextFieldDelegate {
//    
//    var label: UILabel = UILabel()
//    var textField: UITextField!
//
//    var textMessage = CurrentValueSubject<String, Never>("Hello World!")
//
//    var subscriptions = Set<AnyCancellable>()
//
//    override func loadView() {
//        let view = UIView()
//        view.backgroundColor = .white
//
//        textField = UITextField()
//        textField.borderStyle = .roundedRect
//        textField.text = textMessage.value
//        view.addSubview(textField)
//
//        label = UILabel()
//        view.addSubview(label)
//
//        self.view = view
//
//        textField.translatesAutoresizingMaskIntoConstraints = false
//        label.translatesAutoresizingMaskIntoConstraints = false
//
//        let margins = view.layoutMarginsGuide
//
//        NSLayoutConstraint.activate([textField.topAnchor.constraint(equalTo: margins.topAnchor, constant: 20),
//                                     textField.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
//                                     textField.trailingAnchor.constraint(equalTo: margins.trailingAnchor),
//                                     label.leadingAnchor.constraint(equalTo: textField.leadingAnchor),
//                                     label.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 10)])
//
//        textMessage
//            .compactMap({ $0 })
//            .assign(to: \.text, on: label)
//            .store(in: &subscriptions)
//
//        //update label whenever text value changes
//        textField.addTarget(self, action: #selector(updateText), for: .editingChanged)
//    }
//
//    @objc func updateText() {
//        print("update")
//        self.textMessage.value = textField.text ?? ""
//    }
//}
//
//let controller = TextFieldViewController()
//
//PlaygroundPage.current.liveView = controller
//
////: [Next](@next)
