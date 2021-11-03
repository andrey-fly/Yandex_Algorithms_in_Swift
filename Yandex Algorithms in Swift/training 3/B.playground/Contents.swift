import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

let firstSet = Set(readLine()!.split(separator: " ").map { Int($0)! })
let secondSet = Set(readLine()!.split(separator: " ").map { Int($0)! })

let intersection = firstSet.intersection(secondSet).sorted()

for element in intersection {
  print(element, terminator: " ")
}
