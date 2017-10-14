import Foundation
//import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    let sum = A.reduce(0){$0 + $1}
    let n = A.count + 1
    let originalSum = n * (n+1) / 2
    
    return originalSum - sum
}

var arr = [2,3,1,5]
print(solution(&arr))
