import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

func appsPerFloor(m: Int, k: Int, p: Int, n: Int) -> [Int] {
   
    let minBound = k / (m * (p - 1) + n)
    let maxBound = (k - 1) / (m * (p - 1) + n - 1)
    
    var possibleQS: [Int] = []
    
    for q in minBound...maxBound {
        if q != 0 && (m * (p - 1) + n - 1) * q + (k - 1) % q == k - 1 {
            possibleQS.append(q)
        }
    }
    
    return possibleQS
}

func emergency(k1: Int, m: Int, k2: Int, p2: Int, n2: Int) -> [String] {
    
    var possibleQS: [Int] = []
    
    if !(0 <= n2 && n2 <= m) {
        return ["-1", "-1"]
    }
    
    if p2 == 1 && n2 == 1 {
        if k1 <= k2 {
            return ["1", "1"]
        } else {
            possibleQS = Array(k2...k1)
        }
    } else {
        possibleQS = appsPerFloor(m: m, k: k2, p: p2, n: n2)
    }
    
    var result: [Int] = [-1, -1]
    for q in possibleQS {
        let floorIndex = ((k1 - 1 - (k1 - 1) % q) / q) + 1
        var n1 = floorIndex % m
        var p1 = ((floorIndex - n1) / m) + 1
        
        if n1 == 0 {
            n1 = m
            p1 -= 1
        }
        if result == [-1, -1] {
            result = [p1, n1]
        } else {
            if p1 != result[0] {
                result[0] = 0
            }
            if n1 != result[1] {
                result[1] = 0
            }
        }
    }
    
    return result.map { String($0) }
}

let condArray = readLine()!.split(separator: " ").map { Int($0)! }
let k1 = condArray[0]
let m = condArray[1]
let k2 = condArray[2]
let p2 = condArray[3]
let n2 = condArray[4]
print(emergency(k1: k1, m: m, k2: k2, p2: p2, n2: n2).joined(separator: " "))
