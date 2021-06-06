//
//class BinaryNode<Element> {
//    var leftNode: BinaryNode?
//    var rightNode: BinaryNode?
//    var value: Element
//
//    init(value: Element) {
//        self.value = value
//    }
//}
//
//
//
//let zero = BinaryNode(value: 0)
//
//let six = BinaryNode(value: 6)
//let seven = BinaryNode(value: 7)
//
//let two = BinaryNode(value: 2)
//let five = BinaryNode(value: 5)
//
//let nine = BinaryNode(value: 9)
//
//zero.leftNode = six
//zero.rightNode = seven
//
//six.leftNode = two
//six.rightNode = five
//
//seven.leftNode = nine
//
//func isCousins(_ root: BinaryNode<Int>?, _ x: Int, _ y: Int) -> Bool {
//    guard let root = root else { return false }
//
//    var setArr = [Set<Int>]()
//    return findCousins(root, 0, x, y, &setArr)
//}
//
//func findCousins(_ root: BinaryNode<Int>?, _ level: Int, _ x: Int, _ y: Int, _ setArr: inout [Set<Int>]) -> Bool {
//    guard let root = root else {
//        return false
//    }
//
//    if level >= setArr.count {
//        let set = Set([root.value])
//        setArr.append(set)
//    } else {
//        setArr[level].insert(root.value)
//    }
//
//    if (root.leftNode?.value == x && root.rightNode?.value == y) ||
//            (root.leftNode?.value == y && root.rightNode?.value == x) {
//        return false
//    } else if setArr[level].contains(x), setArr[level].contains(y) {
//        return true
//    } else {
//        return findCousins(root.leftNode, level + 1, x, y, &setArr) || findCousins(root.rightNode, level + 1, x, y, &setArr)
//    }
//}
//
//isCousins(zero, 2, 9)
//
