import Foundation
//import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {        // 퍼포먼스 거지
    // write your code in Swift 3.0 (Linux)
    var answer = Int.max
    var left = 0
    var right = 0
    var mid = 0
    
    for i in 1..<A.count {
        for j in 0..<i {
            left += A[j]
        }
        for k in i..<A.count {
            right += A[k]
        }
        
        mid = abs(left - right)
        if answer > mid {
            answer = mid
        }
        left = 0
        right = 0
    }
    return answer
}

public func solution2(_ A : inout [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    var answer = Int.max
    var mid = 0
    var sumOfArray = A.reduce(0){ $0 + $1 }
    var diff = 0
    
    for i in 1..<A.count {
        diff += A[i-1]
        sumOfArray -= A[i-1]
        mid = abs(sumOfArray - diff)
        if answer > mid {
            answer = mid
        }
    }
    return answer
}
var arr = [3,1,2,4,3]
print(solution(&arr))
print(solution2(&arr))

