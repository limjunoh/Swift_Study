import Foundation
//import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ N : Int) -> Int {
    // write your code in Swift 3.0 (Linux)
    var bin = N
    var mid = 0
    var answer = 0
    var flag = (N % 2) == 0 ? false : true
    while bin > 0 {
        if bin % 2 == 0 {
            mid += 1
        } else {
            if answer < mid && flag {
                answer = mid
            }
            mid = 0
            flag = true
        }
        bin /= 2
    }
    return answer
}
