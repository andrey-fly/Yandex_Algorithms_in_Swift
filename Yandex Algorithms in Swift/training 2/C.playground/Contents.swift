import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

_ = readLine()
let numbersArray = readLine()!.split(separator: " ").map { Int($0)! }
let x = Int(readLine()!)!

var minDiff = abs(numbersArray[0] - x)
var nrstElem = numbersArray[0]
for item in numbersArray {
    if abs(item - x) < minDiff {
        minDiff = abs(item - x)
        nrstElem = item
    }
}
print(nrstElem)
