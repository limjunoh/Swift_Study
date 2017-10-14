import Foundation
//import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ N : Int) -> Int {
    // write your code in Swift 3.0 (Linux)
    var bin = N
    var mid = 0
    var answer = 0
    var flag = (N % 2) == 0 ? false : true      //짝수일 경우 맨 뒤에 0이 오므로 갭이 아님
    while bin > 0 {
        if bin % 2 == 0 {
            mid += 1
        } else {
            if answer < mid && flag {           //1을 한번 만난 후 0..0은 답이 될 수 있으므로
                answer = mid
            }
            mid = 0
            flag = true
        }
        bin /= 2
    }
    return answer
}
