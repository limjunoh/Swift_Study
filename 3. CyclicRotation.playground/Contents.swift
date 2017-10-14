import Foundation
//import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
    // write your code in Swift 3.0 (Linux)
    if A.count == 0 {
        return A
    }
    for _ in 0..<K {
        var last = A.removeLast()
        A.insert(last, at: 0)
    }
    
    return A
}
var arr = [1,2,3,4,5,6,7]
print(solution(&arr, 3));
