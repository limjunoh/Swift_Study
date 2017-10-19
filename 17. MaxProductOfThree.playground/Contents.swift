import Foundation
//import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {   //[-5, 5, -5, 4] 일 때 125 아님. 오답
    
    // write your code in Swift 3.0 (Linux)
    var max = Int.min
    A.sort()
    for i in 2..<A.count {
        let triplet = A[i] * A[i-1] * A[i-2]
        if triplet > max {
            max = triplet
        }
    }
    return max
}

public func solution2(_ A : inout [Int]) -> Int {   //정답
    // write your code in Swift 3.0 (Linux)
    let N = A.count
    A.sort()
    
    let left = A[0] * A[1] * A[N-1]
    let right = A[N] * A[N-1] * A[N-2]
    
    return max(left, right)
}

