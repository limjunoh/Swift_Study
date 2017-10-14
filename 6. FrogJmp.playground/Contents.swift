public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    // write your code in Swift 3.0 (Linux)
    let answer = Double((Y - X)) / Double(D)
    return Int(answer.rounded(.up))
}

print(solution(10, 85, 30))
