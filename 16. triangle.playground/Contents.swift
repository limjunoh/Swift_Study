import Foundation
//import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    if A.count < 2 {
        return 0
    }
    A.sort()
    
    for i in 2..<A.count {
        if A[i-2] + A[i-1] > A[i] {
            return 1
        }
    }
    return 0
}
