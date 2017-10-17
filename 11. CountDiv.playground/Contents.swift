import Foundation
//import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : Int, _ B : Int, _ K : Int) -> Int { // O(1) 굿
    // write your code in Swift 3.0 (Linux)
    if (A == B) {
        if (A % K == 0) {
            return 1
        } else {
            return 0
        }
    }
    
    var plus = 0
    if A % K == 0 {
        plus = 1
    }
    
    return (B/K) - (A/K) + plus
}
