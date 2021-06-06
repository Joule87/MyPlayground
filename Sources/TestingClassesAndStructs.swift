//import Foundation
//
//protocol Myprotocol{
//
//    var protocolNumber: Int { get }
//
//}
//
//extension Myprotocol{
//    func protocolAction() {
//        print("Se formo la cagason")
//        print("\(protocolNumber/2)")
//    }
//}
//
//class Prueba: Myprotocol {
//    var protocolNumber: Int
//
//    init(pNumber: Int) {
//        self.protocolNumber = pNumber
//    }
//}
//
//struct myStruct: Myprotocol {
//    var protocolNumber: Int
//
//    func protocolAction() {
//        print("AAAAA")
//    }
//
//}
//
//
//var inflando: myStruct = myStruct(protocolNumber: 10)
//var ala = inflando
//ala.protocolNumber = 33
//
//print("\(inflando.protocolNumber)")
//print("\(ala.protocolNumber)")
//inflando.protocolAction()
//
//print("---------")
//
//var aPrueba: Myprotocol = Prueba(pNumber: 123)
//
////aPrueba.protocolNumber = 3333333
//
//print("\(aPrueba.protocolNumber)")
