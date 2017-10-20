import Foundation
//import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ S : inout String) -> Int {
    // write your code in Swift 3.0 (Linux)
    let N = S.characters.count
    guard N % 2 == 0 else {
        return 0
    }
    
    var count = 0
    for ch in S.characters {
        if ch == "(" {
            count += 1
        } else {
            guard count > 0 else {
                return 0
            }
            
            count -= 1
        }
    }
    return count == 0 ? 1 : 0
}
