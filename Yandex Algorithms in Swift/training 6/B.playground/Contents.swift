import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

func approximateBinarySearch(for array: [Int], with number: Int) -> Int {
    var left = 0
    var right = array.count - 1
    
    while left < right {
        let mid = (left + right) / 2
        if array[mid] == number {
            return array[mid]
        } else if array[mid] > number {
            right = mid
        } else {
            left = mid + 1
        }
    }
    if left == 0 || abs(array[left] - number) < abs(array[left - 1] - number) {
        return array[left]
    }
    return array[left - 1]
}

_ = readLine()
let srtdNumberArray = readLine()!.split(separator: " ").map { Int($0)! }
let numberArray = readLine()!.split(separator: " ").map { Int($0)! }

for number in numberArray {
    print(approximateBinarySearch(for: srtdNumberArray, with: number))
}
