import Foundation
//import Glibc
// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    var answer = 0
    for i in 0..<A.count-1 {
        for j in i+1..<A.count {
            if (A[i] + i) >= (A[j] - j) {
                answer += 1
            }
        }
    }
    
    return answer
}

public func solution2(_ A : inout [Int]) -> Int {   //http://www.lucainvernizzi.net/blog/2014/11/21/codility-beta-challenge-number-of-disc-intersections/
    // write your code in Swift 3.0 (Linux)
}
