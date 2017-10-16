import Foundation
//import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    let N = A.count
    var check = [Bool](repeating: false, count: N + 1)
    
    for ele in A {
        if ele > 0 && ele <= N{
            check[ele] = true
        }
    }
    
    for i in 1...N {
        if !check[i] {
            return i
        }
    }
    
    return N + 1
}
var arr = [2]
print(solution(&arr))

