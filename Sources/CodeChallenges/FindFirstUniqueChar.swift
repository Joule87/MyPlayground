//import Foundation
//
//
//func firstUniqueChar(s: String) -> Int {
//    let head = Node(index: -1)
//    let tail = Node(index: -1)
//    head.next = tail
//    tail.prev = head
//    let characterArray = Array(s)
//    var dictionary = [Character: Node]()
//
//    for index in 0..<characterArray.count {
//        let character = characterArray[index]
//        if dictionary[character] == nil {
//            let newNode = Node(index: index)
//            dictionary[character] = newNode
//            addNode(new: newNode, before: tail)
//        } else if let node = dictionary[character], node.index != -1 {
//            removeNode(node: node)
//        }
//    }
//
//    return head.next?.index == -1 ? -1 : head.next?.index ?? -1
//}
//
//func addNode(new node: Node, before tail: Node) {
//    tail.prev?.next = node
//    node.prev = tail.prev
//    node.next = tail
//    tail.prev = node
//}
//
//func removeNode(node: Node) {
//    node.next?.prev = node.prev
//    node.prev?.next = node.next
//    node.next = nil
//    node.prev = nil
//    node.index = -1
//}
//
//class Node {
//    var prev: Node?
//    var next: Node?
//    var index: Int
//
//    init(index: Int) {
//        self.index = index
//    }
//}
//
//let result = firstUniqueChar(s: "casaFamanaxCc")
//print(result)
