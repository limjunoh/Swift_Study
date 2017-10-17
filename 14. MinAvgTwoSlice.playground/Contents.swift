import Foundation
//import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    var minAvg = Double(A[1] + A[0]) / 2.0
    var startIndex = 0
    
    for i in 2..<A.count {
        var avg = Double(A[i-2] + A[i-1] + A[i]) / 3.0
        
        if avg < minAvg {
            minAvg = avg
            startIndex = i - 2
        }
        
        avg = Double(A[i] + A[i-1]) / 2.0
        
        if avg < minAvg {
            minAvg = avg
            startIndex = i - 1
        }
    }
    
    return startIndex
}
