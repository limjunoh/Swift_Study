import Foundation

public func solution(_ cacheSize: Int, _ cities:[String]) -> Int {
    var runningTime = 0
    var caches: [String] = []
    if cacheSize == 0 {
        return cities.count * 5
    }
    for city in cities {
        let lower = city.lowercased()
        if(caches.contains(lower)) {
            runningTime += 1
        } else {
            if(caches.count == cacheSize) {
                caches.removeFirst()
            }
            caches.append(lower)
            runningTime += 5
        }
    }
    return runningTime
}

/*
 캐시 크기(cacheSize)와 도시이름 배열(cities)을 입력받는다.
 cacheSize는 정수이며, 범위는 0 ≦ cacheSize ≦ 30 이다.
 cities는 도시 이름으로 이뤄진 문자열 배열로, 최대 도시 수는 100,000개이다.
 각 도시 이름은 공백, 숫자, 특수문자 등이 없는 영문자로 구성되며, 대소문자 구분을 하지 않는다. 도시 이름은 최대 20자로 이루어져 있다.
 */
solution(3, ["Jeju", "Pangyo", "Seoul", "NewYork", "LA", "Jeju", "Pangyo", "Seoul", "NewYork", "LA"])
solution(3, ["Jeju", "Pangyo", "Seoul", "Jeju", "Pangyo", "Seoul", "Jeju", "Pangyo", "Seoul"])
solution(2, ["Jeju", "Pangyo", "Seoul", "NewYork", "LA", "SanFrancisco", "Seoul", "Rome", "Paris", "Jeju", "NewYork", "Rome"])
solution(5, ["Jeju", "Pangyo", "Seoul", "NewYork", "LA", "SanFrancisco", "Seoul", "Rome", "Paris", "Jeju", "NewYork", "Rome"])
solution(2, ["Jeju", "Pangyo", "NewYork", "newyork"])
solution(0, ["Jeju", "Pangyo", "Seoul", "NewYork", "LA"])
