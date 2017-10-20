import Foundation
//import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ S : inout String) -> Int {       // 퍼포먼스.. 60퍼센트
    // write your code in Swift 3.0 (Linux)
    var stack: [Character] = []
    for char in S.characters {
        if char == "{" || char == "[" || char == "(" {
            stack.append(char)
        }
        else {
            if stack.count == 0 {
                return 0
            } else {
                if stack.last == "{" && char == "}" {
                    stack.removeLast()
                } else if stack.last == "[" && char == "]" {
                    stack.removeLast()
                } else if stack.last == "(" && char == ")" {
                    stack.removeLast()
                } else {
                    return 0
                }
            }
        }
    }
    
    if stack.count != 0 {
        return 0
    }
    else {
        return 1
    }
}

public func solution2(_ S : inout String) -> Int {
    // write your code in Swift 3.0 (Linux)
    let N = S.characters.count
    guard N % 2 == 0 else {    // 홀수이면 어차피 짝 안맞음
        return 0
    }
    
    var stack: [Character] = []
    let matched: [Character : Character] = ["]":"[", "}":"{", ")":"("]
    
    for ch in S.characters {
        guard N / 2 >= stack.count else {
            return 0
        }
        
        if ["[", "{", "("].contains(ch) {
            stack.append(ch)
        } else {
            guard stack.count > 0 else {
                return 0
            }
            if matched[ch] != stack.popLast()! {
                return 0
            }
        }
    }
    
    return stack.count == 0 ? 1 : 0
}
