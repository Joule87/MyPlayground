import Foundation

///Add Two Numbers

//You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.
//
//You may assume the two numbers do not contain any leading zero, except the number 0 itself.
//
//Input: l1 = [2,4,3], l2 = [5,6,4]
//Output: [7,0,8]
//Explanation: 342 + 465 = 807.
//Example 2:
//
//Input: l1 = [0], l2 = [0]
//Output: [0]
//Example 3:
//
//Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
//Output: [8,9,9,9,0,0,0,1]

///Result
//
//public class ListNode {
//    public var val: Int
//    public var next: ListNode?
//    public init() { self.val = 0; self.next = nil; }
//    public init(_ val: Int) { self.val = val; self.next = nil; }
//    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
//}
//
//func addValue(linkedList: inout ListNode?, lastNode: ListNode? = nil, value: Int) -> ListNode {
//  let lastAddedNode = ListNode(value)
//
//
//  guard let originalListNode = linkedList else {
//      linkedList = lastAddedNode
//      return lastAddedNode
//  }
//
//  guard let last = lastNode else {
//      return originalListNode
//  }
//
//  last.next = lastAddedNode
//  return lastAddedNode
//}
//
//func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
//  var result: ListNode?
//  var lastListNode: ListNode?
//
//  var restOfSum = 0
//  var currentNodeL1 = l1
//  var currentNodeL2 = l2
//  repeat {
//      let l1Value = currentNodeL1?.val ?? 0
//      let l2Value = currentNodeL2?.val  ?? 0
//      let l1l2Sum = l1Value + l2Value + restOfSum
//
//      restOfSum = 0
//
//      if l1l2Sum > 9 {
//          let l1l2SumAsString = String(l1l2Sum)
//          let numberArray = l1l2SumAsString.compactMap(\.wholeNumberValue)
//
//          if let firstNumber = numberArray.first {
//              restOfSum = firstNumber
//          }
//          if let lastNumber = numberArray.last {
//              lastListNode = addValue(linkedList: &result, lastNode: lastListNode, value: lastNumber)
//          }
//      } else {
//          lastListNode = addValue(linkedList: &result, lastNode: lastListNode, value: l1l2Sum)
//      }
//
//      currentNodeL1 = currentNodeL1?.next
//      currentNodeL2 = currentNodeL2?.next
//  } while currentNodeL1 != nil || currentNodeL2 != nil
//
//  if restOfSum > 0 {
//      lastListNode = addValue(linkedList: &result, lastNode: lastListNode, value: restOfSum)
//  }
//  return result
//}
//
//let l1 = ListNode(2)
//let l2 = ListNode(4)
//let l3 = ListNode(3)
//
//let l4 = ListNode(5)
//let l5 = ListNode(6)
//let l6 = ListNode(4)
//
//
//l1.next = l2
//l2.next = l3
//
//l4.next = l5
//l5.next = l6
//
//
//  var newListNode = addTwoNumbers(l1, l4)
//  print("\(newListNode?.val)")
//  while newListNode?.next != nil {
//      newListNode = newListNode?.next
//      print("\(newListNode?.val)")
//  }
//
//
//
