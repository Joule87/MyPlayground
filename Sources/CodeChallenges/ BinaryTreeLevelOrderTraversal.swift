import Foundation

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */

// Solution with recursion Recursion

//class Solution {
//    func levelOrder(_ root: TreeNode?) -> [[Int]] {
//        var levels = [[Int]]()
//        bfs(&levels, root, 0)
//        return levels
//    }
//
//    func bfs(_ levels: inout [[Int]], _ root: TreeNode?, _ level: Int) {
//        guard let root = root else {
//            return
//        }
//
//        if level < levels.count {
//            levels[level].append(root.val)
//        } else {
//            levels.append([root.val])
//        }
//        bfs(&levels, root.left, level+1)
//        bfs(&levels, root.right, level+1)
//    }
//}


//Iterative Solution
//
//class Solution {
//    func levelOrder(_ root: TreeNode?) -> [[Int]] {
//        var result = [[Int]]()
//        var queue = [TreeNode]()
//
//        guard let root = root else {
//            return result
//        }
//        
//        queue.append(root)
//        
//        while(!queue.isEmpty) {
//            let currentQueueLength = queue.count
//            var level = [Int]()
//            
//            for _ in 0..<currentQueueLength {
//                let treeNode = queue.removeFirst()
//                level.append(treeNode.val)
//                
//                if let left = treeNode.left {
//                    queue.append(left)
//                }
//                if let right = treeNode.right {
//                    queue.append(right)
//                }
//            }
//            result.append(level)
//        }
//        
//        return result
//    }
//}
