public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    // write your code in Swift 3.0 (Linux)
    let answer = Double((Y - X)) / Double(D)
    return Int(answer.rounded(.up))
}

public func solution2(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    // write your code in Swift 3.0 (Linux)
    return (Y-X) % D > 0 ? (Y-X)/D + 1 : (Y-X)/D
}


print(solution(10, 85, 30))
print(solution2(10, 85, 30))
