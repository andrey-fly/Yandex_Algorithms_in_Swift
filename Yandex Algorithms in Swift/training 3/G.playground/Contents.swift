import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

let amount = Int(readLine()!)!
var turtleSay: [Int]

var beenSet: Set<[Int]> = .init()
var answer = 0

for _ in 0..<amount {
    turtleSay = readLine()!.split(separator: " ").map { Int($0)! }
    let isNonNegative = turtleSay[0] >= 0 && turtleSay[1] >= 0
    let isEqualAmountOfTurtles = turtleSay[0] + turtleSay[1] == amount - 1
    if isNonNegative && isEqualAmountOfTurtles && !beenSet.contains(turtleSay) {
        answer += 1
        beenSet.insert(turtleSay)
    }
}

print(answer)
