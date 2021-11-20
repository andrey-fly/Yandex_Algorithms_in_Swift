import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

let a = Int(readLine()!)!
let b = Int(readLine()!)!
let n1 = Int(readLine()!)!
let n2 = Int(readLine()!)!

let min1 = (n1 - 1) * a + n1
let min2 = (n2 - 1) * b + n2

let max1 = min1 + 2 * a
let max2 = min2 + 2 * b

if min2 > max1 || min1 > max2 {
    print(-1)
} else {
    print(max(min1, min2), min(max1, max2))
}
