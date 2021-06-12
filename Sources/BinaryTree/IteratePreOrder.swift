//import Foundation
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
//
//    var isEmpty: Bool {
//        return array.isEmpty
//    }
//
//    var top: T? {
//        return array.last
//    }
//}
//
//extension Stack: CustomStringConvertible {
//    var description: String {
//        return "\(array.description)"
//    }
//}
//
//class Node<T> {
//    var value: T
//    var leftNode: Node?
//    var rightNode: Node?
//    init(value: T) {
//        self.value = value
//    }
//}
//
//var n1 = Node(value: 1)
//var n2 = Node(value: 2)
//var n3 = Node(value: 3)
//
//var n4 = Node(value: 4)
//var n5 = Node(value: 5)
//var n6 = Node(value: 6)
//
//n1.leftNode = n2
//n1.rightNode = n3
//
//n2.leftNode = n4
//n2.rightNode = n5
//
//n3.leftNode = n6
//
//func runPreOrder(node: Node<Int>) -> [Int] {
//    let nodes = Stack<Node<Int>>()
//    var result: [Int] = []
//
//    nodes.push(item: node)
//    while !nodes.isEmpty {
//        guard let node = nodes.pop() else {
//            continue
//        }
//        result.append(node.value)
//
//        if let rightNode = node.rightNode {
//            nodes.push(item: rightNode)
//        }
//        if let leftNode = node.leftNode {
//            nodes.push(item: leftNode)
//        }
//    }
//
//    return result
//}
//
