import Foundation

public func solution(_ n: Int, _ arr1: inout[Int], _ arr2 : inout [Int]) -> [String] {
    // write your code in Swift 3.0 (Linux)
    var newArray: [String] = []
    for _ in 1...n {
        let num = String(arr1.removeFirst() | arr2.removeFirst(), radix:2)
        let answer = num.replacingOccurrences(of: "1", with: "#")
        newArray.append(answer.replacingOccurrences(of: "0", with: " "))
    }
    
    return newArray
}
var arr1 = [9,20,28,18,11]
var arr2 = [30,1,21,17,28]
solution(5, &arr1, &arr2)
