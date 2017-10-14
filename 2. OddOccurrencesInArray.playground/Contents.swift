import Foundation
//import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    var answer = 0
    for ele in A {
        answer ^= ele
    }
    return answer
}
var arr = [9,3,9,3,9,7,9,7,3,7,3,12,4,12,4]
print(solution(&arr))
