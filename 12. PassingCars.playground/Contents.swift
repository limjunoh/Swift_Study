import Foundation
//import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    var count = 0
    var toEast = 0
    
    for direction in A {
        if direction == 0 {
            toEast += 1
        } else {
            count += toEast
        }
    }
    
    if count > 1_000_000_000 {
        count = -1
    }
    return count
}
var arr = [0,1,0,1,1]
print(solution(&arr))
