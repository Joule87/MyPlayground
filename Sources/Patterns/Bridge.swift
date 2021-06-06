//
//import Foundation
//
//protocol Category {
//    func background() -> String
//    func textColor() -> String
//}
//
//class DarkMode : Category {
//    func background() -> String {
//        return "Black"
//    }
//    
//    func textColor() -> String {
//        return "White"
//    }
//}
//
//class LightMode : Category {
//    func background() -> String {
//        return "White"
//    }
//    
//    func textColor() -> String {
//        return "Black"
//    }
//}
//
//protocol View {
//    var categoryType: Category { get set }
//    func show()
//}
//
//class TextField: View {
//    var categoryType: Category
//    
//    init(categoryType: Category) {
//        self.categoryType = categoryType
//    }
//    func show() {
//        print("Show TextField using backgroundColor: \(categoryType.background()) and textColor: \(categoryType.textColor())")
//    }
//    
//    
//}
//
//class Button: View {
//    var categoryType: Category
//    
//    init(categoryType: Category) {
//        self.categoryType = categoryType
//    }
//    func show() {
//       print("Show Button using backgroundColor: \(categoryType.background()) and textColor: \(categoryType.textColor())")
//    }
//    
//}
//
//class Label: View {
//    var categoryType: Category
//    
//    init(categoryType: Category) {
//        self.categoryType = categoryType
//    }
//    func show() {
//       print("Show Label using backgroundColor: \(categoryType.background()) and textColor: \(categoryType.textColor())")
//    }
//}
//
//let category: Category = DarkMode()
//let view: View = TextField(categoryType: category)
//view.show()
//
