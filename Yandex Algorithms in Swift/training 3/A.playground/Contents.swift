import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

let numbersArray = readLine()!.split(separator: " ")
let numbersSet = Set(numbersArray)
print(numbersSet.count)
