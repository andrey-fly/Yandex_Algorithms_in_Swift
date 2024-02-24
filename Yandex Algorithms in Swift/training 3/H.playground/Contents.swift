import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

let amount = Int(readLine()!)!
var xSet: Set<Substring> = .init()

for _ in 0..<amount {
    xSet.insert(readLine()!.split(separator: " ")[0])
}

print(xSet.count)
