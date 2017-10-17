import Foundation
//import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ N : Int, _ A : inout [Int]) -> [Int] { // O(N * M) 퍼포먼스.. O(N + M) 만들어야됨!
    // write your code in Swift 3.0 (Linux)
    var answer = [Int](repeating: 0, count: N)

    for i in 0..<A.count {    // O(M)
        if A[i] <= N {
            answer[A[i] - 1] += 1
        }
        
        if A[i] == N + 1 {
            answer = [Int](repeating: answer.max()!, count: N) // O(N)
        }
    }
    
    return answer
}

public func solution2(_ N : Int, _ A : inout [Int]) -> [Int] {  // O(M+N) 된다.
    // write your code in Swift 3.0 (Linux)
    var counter = [Int](repeating: 0, count: N)
    var currentMax = 0
    var maxCount = 0
    
    for num in A {      // O(M)
        if N < num {
            maxCount = currentMax
        } else {
            counter[num - 1] = max(counter[num - 1], maxCount)
            counter[num - 1] += 1
            currentMax = max(counter[num - 1], currentMax)
        }
    }
    
    for (idx, num) in counter.enumerated() {    // O(N)
        counter[idx] = max(num, maxCount)
    }
    return counter
}
