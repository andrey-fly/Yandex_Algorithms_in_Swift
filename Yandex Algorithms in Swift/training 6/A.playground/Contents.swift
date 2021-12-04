import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

let _ = readLine()
let arrayFirst = readLine()!.split(separator: " ").map { Int($0)! }
let arraySecond = readLine()!.split(separator: " ").map { Int($0)! }

func binarySearch(array a: [Int], value v: Int) -> Bool {
    var leftBound = 0
    var rightBound = a.count
    while leftBound < rightBound {
        let midIndex = (leftBound + rightBound) / 2
        if a[midIndex] == v {
            return true
        } else if a[midIndex] < v {
            leftBound = midIndex + 1
        } else {
            rightBound = midIndex
        }
    }
    return false
}

for item in arraySecond {
    print(binarySearch(array: arrayFirst, value: item) ? "YES" : "NO")
}

