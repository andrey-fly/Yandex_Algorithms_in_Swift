import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

func isGrowth(array: [Int]) -> Bool {
    
    for i in 1..<array.count {
        if array[i-1] >= array[i] {
            return false
        }
    }
    return true
}

let array = readLine()!.split(separator: " ").map { Int($0)! }
print(isGrowth(array: array) ? "YES" : "NO")
