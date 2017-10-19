import Foundation
//import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    var counter = 0
    var temp = 1_000_001
    A.sort()
    for num in A {
        if temp != num {
            counter += 1
        }
        
        temp = num
    }
    return counter
}

var arr = [2,1,1,2,3,1]
print(solution(&arr))

/*
 public int solution(int[] A) {        자바에서는 HashSet으로 더 쉽게 구현 가능.. 스위프트도 Set 있음
 Set<Integer> nums = new HashSet<>();
 
 for (int a : A) {
 nums.add(a);
 }
 
 return nums.size();
 }
*/

public func solution2(_ A : inout [Int]) -> Int {   // Set은 중복 허용 X
    // write your code in Swift 3.0 (Linux)
    var set = Set<Int>()
    
    for num in A {
        set.insert(num)
    }
    
    return set.count
}
