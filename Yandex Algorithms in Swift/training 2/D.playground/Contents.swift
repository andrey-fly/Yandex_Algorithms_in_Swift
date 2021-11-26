import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

let numbersArray = readLine()!.split(separator: " ").map { Int($0)! }
var bigNrstNumbers = 0
for i in stride(from: 1, through: numbersArray.count - 2, by: 1) {
    if numbersArray[i - 1] < numbersArray[i] && numbersArray[i] > numbersArray[i + 1] {
        bigNrstNumbers += 1
    }
}
print(bigNrstNumbers)
