import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

let buttons = readLine()!.split(separator: " ").map { Int($0)! }
let numbers = readLine()!.split(separator: "").map { Int($0)! }
print(Set(numbers).subtracting(Set(buttons)).count)
