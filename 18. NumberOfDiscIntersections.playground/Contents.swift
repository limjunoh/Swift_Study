import Foundation
//import Glibc
// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    var answer = 0
    var N = A.count
    if N < 1 {
        return 0
    }
    for i in 0..<N-1 {
        for j in i+1..<N {
            if (i + A[i]) >= (j - A[j]) {
                answer += 1
            }
        }
    }
    
    if answer > 10_000_000 {
        return -1
    }
    return answer
}

public func solution2(_ A : inout [Int]) -> Int {   //http://www.lucainvernizzi.net/blog/2014/11/21/codility-beta-challenge-number-of-disc-intersections/
    // write your code in Swift 3.0 (Linux)
}
