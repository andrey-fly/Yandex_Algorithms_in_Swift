import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

let a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!
let d = Int(readLine()!)!
let e = Int(readLine()!)!

let brickArray: [Int] = [a, b, c].sorted()
let aMin = brickArray[0]
let bMin = brickArray[1]

print((aMin <= d && bMin <= e) || (aMin <= e && bMin <= d) ? "YES" : "NO")
