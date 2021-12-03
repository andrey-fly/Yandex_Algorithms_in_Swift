import Foundation

if let path = Bundle.main.path(forResource: "input", ofType: "txt") {
    freopen(path, "r", stdin)
}


let n = Int(readLine()!)!
var prev = Double(readLine()!)!
var minv = 30.0
var maxv = 4000.0

for _ in 1..<n {
    let note = readLine()!.split(separator: " ").map { String($0) }
    let (cur, s) = (Double(note[0])!, note[1])
    if cur == prev {
        continue
    }
    let mid = (prev + cur) / 2
    if (cur > prev && s == "closer") || (cur < prev && s == "further") {
        minv = max(minv, mid)
    } else {
        maxv = min(maxv, mid)
    }
    prev = cur
}
print(minv, maxv)
