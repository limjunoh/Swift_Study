import Foundation
//import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ H : inout [Int]) -> Int {        // 퍼포먼스가 약간 구림
    // write your code in Swift 3.0 (Linux)
    var stack = IntStack()
    var count = 0
    for ele in H {
        if stack.size == 0 {
            stack.push(ele)
        } else {
            while stack.peek > ele {
                if stack.pop() == nil {
                    break
                }
                count += 1
            }
            if stack.peek != ele {
                stack.push(ele)
            }
        }
    }
    
    while stack.size > 0 {
        stack.pop()
        count += 1
    }
    
    return count
}

struct IntStack {
    var items = [Int]()
    var size : Int {
        return items.count
    }
    var peek: Int {
        if size == 0 {
            return -1
        }
        return items.last!
    }
    mutating func push(_ item: Int) {
        items.append(item)
    }
    mutating func pop() -> Int? {
        return items.popLast()
    }
}

public func solution2(_ H : inout [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    var block = 0
    var stack: [Int] = []
    
    for height in H {
        while stack.count != 0, stack.last! > height {
            stack.removeLast(1)
        }
        
        if stack.count == 0 || stack.last != height {
            block += 1
            stack.append(height)
        }
    }
    
    return block
}
