import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {    // 틀렸음 [1, 4, 1] 은 순열 아닌데 1 나옴...
    // write your code in Swift 3.0 (Linux)
    let N = A.count
    let sum = N * (N+1) / 2
    let real = A.reduce(0){$0+$1}
    
    if sum - real == 0 {
        return 1
    } else {
        return 0
    }
}

public func solution2(_ A : inout [Int]) -> Int {   // 다 맞는데 퍼포먼스가 40% 나옴
    // write your code in Swift 3.0 (Linux)
    A.sort()
    var mid = 0
    for ele in A {
        if ele - mid != 1 {
            return 0
        }
        mid = ele
    }
    return 1
}

public func solution3(_ A : inout [Int]) -> Int {   // 성공!
    // write your code in Swift 3.0 (Linux)
    var check = [Bool](repeating: false, count: A.count + 1)
    check[0] = true
    
    for ele in A {
        if ele > A.count {
            continue
        }
        check[ele] = true
    }
    
    if check.contains(false) {
        return 0
    } else {
        return 1
    }
}
