import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

func bgstMultiplication(for numbers: [Int]) -> [Int] {
    if numbers.count == 3 {
        return numbers.sorted()
    } else {
        var max1 = Int.min
        var max2 = Int.min
        var max3 = Int.min
        var min1 = Int.max
        var min2 = Int.max
        
        for i in 0..<numbers.count {
            if numbers[i] >= max1 {
                max3 = max2
                max2 = max1
                max1 = numbers[i]
            } else if numbers[i] >= max2 {
                max3 = max2
                max2 = numbers[i]
            } else if numbers[i] >= max3 {
                max3 = numbers[i]
            }
            if numbers[i] <= min1 {
                min2 = min1
                min1 = numbers[i]
            } else if numbers[i] <= min2 {
                min2 = numbers[i]
            }
        }
        if max1 * max2 * max3 > max1 * min1 * min2 {
            return [max1, max2, max3]
        } else {
            return [min1, min2, max1]
        }
    }
}

let numberArray = readLine()!.split(separator: " ").map { Int($0)! }
let answer = bgstMultiplication(for: numberArray).map { String($0) }
print(answer.joined(separator: " "))

