import Foundation

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ S : inout String, _ P : inout [Int], _ Q : inout [Int]) -> [Int] {   //보류...
    // write your code in Swift 3.0 (Linux)
    var answer = [Int](repeating: 0, count: P.count)
    var arr: [Character] = Array(S.characters)
    
    for i in 0..<P.count {
        let subString: [Character] = Array(arr[P[i]...Q[i]])
        
        switch min(subString) {
        case "A":
            answer[i] = 1
        }
    }
    
    return answer
}

