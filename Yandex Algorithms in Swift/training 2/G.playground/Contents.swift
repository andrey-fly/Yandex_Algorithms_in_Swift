import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

func bgstMultiplication(for numbers: [Int]) -> (Int, Int) {
    if numbers.count == 2 {
        return numbers[0] < numbers[1] ? (numbers[0], numbers[1]) : (numbers[1], numbers[0])
    } else {
        var max1 = Int.min
        var max2 = Int.min
        var min1 = Int.max
        var min2 = Int.max
        
        for i in 0..<numbers.count {
            if numbers[i] >= max1 {
                max2 = max1
                max1 = numbers[i]
            } else if numbers[i] >= max2 {
                max2 = numbers[i]
            }
            if numbers[i] <= min1 {
                min2 = min1
                min1 = numbers[i]
            } else if numbers[i] <= min2 {
                min2 = numbers[i]
            }
        }
        if max1 * max2 > min1 * min2 {
            return (max2, max1)
        } else {
            return (min1, min2)
        }
    }
}

let numberArray = readLine()!.split(separator: " ").map { Int($0)! }
let answer = bgstMultiplication(for: numberArray)
print(answer.0, answer.1)
