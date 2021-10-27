import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}

let a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!

if (a + b > c) && (b + c > a) && (a + c > b) {
    print("YES")
} else {
    print("NO")
}
