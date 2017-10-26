import Foundation

public func solution(_ dartResult: String) -> Int {
    var charArray: [Character] = Array(dartResult.characters)
    var numbers: [Int] = [0]
    var currentCount = 0
    for var i in 0..<charArray.count {
        if charArray[i] >= "0" && charArray[i] <= "9" {         //숫자 일 때
            if charArray[i+1] == "0" {
                numbers.append(10)
                i += 1
            } else {
                numbers.append(Int(String(charArray[i]))!)
            }
            currentCount += 1
        } else {                                                //문자 일 때
            switch(charArray[i]) {
            case "D":
                numbers[currentCount] *= numbers[currentCount]
            case "T":
                numbers[currentCount] *= numbers[currentCount] * numbers[currentCount]
            case "*":
                numbers[currentCount-1] *= 2
                numbers[currentCount] *= 2
            case "#":
                numbers[currentCount] = -numbers[currentCount]
            default:
                continue
            }
        }
    }
    
    return numbers[1] + numbers[2] + numbers[3]
}

print(solution("1S2D*3T"))     // 1^1*2 + 2^2*2 + 3^3 = 37
print(solution("1D2S#10S"))    // 1^2 + 2^1*(-1) + 10^1 = 9
print(solution("1D2S0T"))      // 1^2 + 2^1 + 0^3 = 3
print(solution("1S*2T*3S"))    // 1^1*2*2 + 2^3*2 + 3^1 = 23
print(solution("1D#2S*3S"))    // 1^2*(-1)*2 + 2^1*2 + 3^1 = 5
print(solution("1T2D3D#"))     // 1^3 + 2^2 + 3^2*(-1) = -4
print(solution("1D2S3T*"))     // 1^2 + 2^1*2 + 3^3*2 = 59

// 점수|보너스|[옵션]으로 이루어진 문자열 3세트 ex) 1S2D*3T
// 점수 1 ~ 10점, S 원점수, D 제곱, T 세제곱
// 옵션은 *, # 중 하나이고 없을수도 있음.
// *(스타상) #(아차상)
// 스타상 당첨 시 해당 점수와 바로 전 점수 2배 만든다.
// 아차상 당첨 시 해당 점수는 마이너스(-)된다.
