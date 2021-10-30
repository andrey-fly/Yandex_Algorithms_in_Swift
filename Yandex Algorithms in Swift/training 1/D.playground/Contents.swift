import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

let a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!

if (a == 0 && b == 0 && c == 0) || (a == 0 && b == c * c) {
    print("MANY SOLUTIONS")
} else if c < 0 || (a == 0 && b != c * c) {
    print("NO SOLUTION")
} else if (c * c - b) % a != 0 {
    print("NO SOLUTION")
} else {
    print((c * c - b) / a)
}
