import Foundation
//import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ X : Int, _ A : inout [Int]) -> Int { // 퍼포먼스 O(n*2)....
    // write your code in Swift 3.0 (Linux)
    var check = [Bool](repeating: false, count: X)
    for i in 0..<A.count {              // 여기서 n
        check[A[i] - 1] = true
        if !check.contains(false) {     // 여기서 또 n
            return i
        }
    }
    return -1
}

public func solution2(_ X : Int, _ A : inout [Int]) -> Int { // 이것도 퍼포먼스 O(n*2)....
    // write your code in Swift 3.0 (Linux)
    var check = [Int](1...X)
    for i in 0..<A.count {
        check = check.filter { $0 != A[i]}
        if check.isEmpty {
            return i
        }
    }
    return -1
}

public func solution3(_ X : Int, _ A : inout [Int]) -> Int {    // 정답 O(n) 나옴
    // write your code in Swift 3.0 (Linux)
    var check = [Bool](repeating: false, count: X + 1)
    var answer = -1
    var count = 0
    
    for i in 0..<A.count {
        if(!check[A[i]]) {
            check[A[i]] = true
            count += 1
        }
        
        if(count == X) {
            answer = i
            break
        }
    }
    return answer
}
