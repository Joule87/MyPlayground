//Stack
//
//class Stack<T> {
//    private var array: [T] = []
//    
//    func push(item: T) {
//        array.append(item)
//    }
//    
//    func pop() -> T? {
//        if array.isEmpty {
//            return nil
//        }
//        let lastItem =  array[array.count-1]
//        array = array.dropLast()
//        return lastItem
//    }
//}
//
//extension Stack: CustomStringConvertible {
//    var description: String {
//        return "\(array.description)"
//    }
//}
//
//struct Queue<T> {
//  private var elements: [T] = []
//
//  mutating func enqueue(_ value: T) {
//    elements.append(value)
//  }
//
//  mutating func dequeue() -> T? {
//    guard !elements.isEmpty else {
//      return nil
//    }
//    return elements.removeFirst()
//  }
//
//  var head: T? {
//    return elements.first
//  }
//
//  var tail: T? {
//    return elements.last
//  }
//}
